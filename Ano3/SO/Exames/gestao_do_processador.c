
#define RUN 0
#define BLOCKED 1
#define READY_TO_RUN 2

typedef struct
{
	BOOLEAN busy; /* sinalização de entrada ocupada */
	unsigned int pid, /* identificador do processo */
				 pstat, /* estado do processo: 0 - RUN 1 - BLOCKED 2 - READY-TO-RUN */
				 prior; /* nível de prioridade */
	unsigned char intreg[K]; /* contexto do processador */
	unsigned long addspace; /* endereço da região de memória principal onde está localizado o espaço de endereçagem do processo (organização de memória real) */
} PCT_ENTRY;

struct binode
{
	unsigned int info; /* valor armazenado */
	struct binode *ant, /* ponteiro para o nó anterior */
				  *next; /* ponteiro para o nó seguinte */
};

typedef struct binode BINODE;

typedef struct
{
	BINODE *pin_val, /* ponteiro para o ponto de inserção */
		   *pout_val; /* ponteiro para o ponto de retirada */
} FIFO;

typedef struct
{
	int val; /* valor de contagem */
	FIFO queue; /* fila de espera dos processos bloqueados */
} SEMAPHORE;

static SEMAPHORE sem[200]; /* array de semáforos */
static PCT_ENTRY pct[100]; /* tabela de controlo de processos */
static FIFO redtorun[4]; /* array das filas de espera dos processos prontos a serem executados */
static unsigned int pindex; /* índice da entrada da PCT que descreve o processo que detém o processador */

void interrupt_enable (void);
void interrupt_disable (void);

void save_context (unsigned int pct_index);
void restore_context (unsigned int pct_index);

void *malloc (unsigned int size);
void free (void *pnt);

void fifo_in (FIFO *fifo, BINODE *val);
void fifo_out (FIFO *fifo, BINODE *val);

/** \author borges */
void dispatch (void)
{
	unsigned int pct_index;
	BINODE temp;
	int i;
	temp = NULL;
	for (i = 0; i < 4; i++)
		if (redtorun[i].pin_val != NULL) /* penso que ficava melhor pout_val mas vai dar ao mesmo */
		{
			fifo_out(&(redtorun[i]),&temp);
			break /* penso que falta isto by simon */
		}
	if (temp != NULL)
		pct_index = temp.info;
	else
		pct_index = 0;
	pct[pct_index].pstat = RUN;
	pindex = pct_index;
	restore_context (pct_index);
	interrupt_enable (); /* não percebo bem porque é que isto está aqui, segundo borges foi feito algures um semdown sabe-se lá como e porque, tambem não afecta o código */
}

/** \author simon */
void timerrunout (void)
{
	BINODE *temp;
	save_context (pindex);
	pct[pindex].pstat = READY_TO_RUN;
	pct[pindex].prior = (pct[pindex].prior + 1) % 4;
	temp = (BINODE *temp) malloc (sizeof(BINODE));
	temp->info = pindex;
	fifo_in (&(redtorun[pct[pindex].prior]),temp);
	longjump dispatch; /* pus o mesmo que o borges na sleep */
}

/** \author borges */
void sleep (unsigned int sem_index)
{
	BINODE *temp;
	save_context (pindex);
	pct[pindex].pstat = BLOCKED;
	pct[pindex].prior = (pct[pindex].prior + 1) % 4;
	temp = (BINODE *temp) malloc (sizeof(BINODE));
	temp->info = pindex;
	fifo_in (&(sem[sem_index].queue),temp);
	longjump dispatch; /* (nivel de assembly) para não termos que voltar a esta função, ou seja não é gravado na stack do sistema acho eu*/
}

/** \author simon */
void wakeup (unsigned int sem_index)
{
	BINODE *temp;
	temp = (BINODE *temp) malloc (sizeof(BINODE));
	fifo_out(&(sem[sem_index].queue),temp);
	pct[temp->info].pstat = READY_TO_RUN;
	fifo_in (&(redtorun[pct[temp->info].prior])),temp);
}

/** \author borges */
unsigned int sem_create (void)
{
	unsigned int n;
	interrupt_disable ();
	n = 0;
	while (n < 200)
	{
		if (sem[n].val < 0)
		{
			sem[n].val = 0;
			interrupt_enable ();
			return n;
		}
		else
			n++;
	}
	interrupt_enable ();
	return 200;
}

/** \author simon */
void sem_destroy (unsigned int sem_index)
{
	interrupt_disable ();
	if (sem[sem_index].queue.pout_val == NULL) /* penso que so podemos destruir um semaforo se não tiver processos, (se tou enganado, teriamos que mover os processos para as filas redtorun) */
		sem[sem_index].val = -1; /* tem que ser um valor negativo qualquer */
	interrupt_enable ();
}

/** \author borges */
void sem_down (unsigned int sem_index)
{
	interrupt_disable ();
	if (sem[sem_index].val == 0)
		sleep (sem_index);
	else
		sem[sem_index].val--;
	interrupt_enable ();
}

/** \author simon */
void sem_up (unsigned int sem_index)
{
	interrupt_disable ();
	if (sem[sem_index].queue.pin_val == NULL)
		sem[sem_index].val++;
	else
		wakeup (sem_index);
	interrupt_enable ();
}

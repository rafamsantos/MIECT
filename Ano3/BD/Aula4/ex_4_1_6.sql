create schema ATL

create table ATL.Pessoa(
nome			varchar(30) not null,
cc				int not null,
morada			varchar(30) not null,
d_nascimento	date not null,
primary key(cc)
)

create table ATL.Turma(
identificador	int not null,
n_maxAlunos		int not null,
designaçao		varchar(30) not null,
ano_letivo		int not null,
professor		varchar(30) not null,
atividade		varchar(30) not null,
primary key(identificador)
)

create table ATL.Professor(
telefone			int not null,
turma				int not null,
prof_dNascimento	date not null,
n_func				int not null,
cc					int not null,
foreign key(turma) references Turma(identificador)
)

create table ATL.Aluno(
nome			varchar(30) not null,
morada			varchar(30) not null,
al_dNascimento	date not null,
telefone		int not null,
cc				int not null,
foreign key(cc) references Pessoa(cc)
)

create table ATL.Atividade(
designaçao		varchar(30) not null,
identificador	int not null,
custo			int not null,
primary key(identificador)
)

create table ATL.Tem(
id_atividade	int not null,
id_turma		int not null,
foreign key(id_atividade) references Atividade(identificador),
foreign key(id_turma) references Turma(identificador)
)

create table ATL.Frequenta(
id_atividade	int not null,
cc				int not null,
id_turma		int not null,
foreign key(id_atividade) references Atividade(identificador),
foreign key(cc) references Pessoa(cc),
foreign key(id_turma) references Turma(identificador)
)


create table ATL.Encarregado_educação(
email		varchar(30) not null,
telefone	int not null,
cc			int not null,
foreign key(cc) references Pessoa(cc)
)
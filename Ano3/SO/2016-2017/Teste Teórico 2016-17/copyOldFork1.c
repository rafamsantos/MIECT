#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>


int main(void)
{
    int ret;

    // executada pelo pai
    printf("Antes do fork: PID = %d, PPID = %d\n", getpid(), getppid());
    // tanto pelo pai como pelo filho
    if ((ret = fork()) < 0)
    {
        // apenas pelo pai em caso de erro
        perror("erro na duplicação do processo");
        return EXIT_FAILURE;
    }

    // tanto pelo pai como pelo filho
    if (ret > 0)
    {
        // apenas pelo pai (visto que fork retorna o PID do filho)
        sleep(1);
    }
    // tanto pelo pai como pelo filho
    printf("Quem sou eu?\nApós o fork: PID = %d, PPID = %d\n", getpid(), getppid());

    return EXIT_SUCCESS;
}

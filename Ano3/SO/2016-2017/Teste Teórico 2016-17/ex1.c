#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    switch (fork())
    {
    case 0:
        printf("A\n");
        break;
    default:
        printf("B\n");
        wait(NULL);
        printf("C\n");
    }
    return 0;
}

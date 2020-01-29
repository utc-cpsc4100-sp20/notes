#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAXSTR 20

int main(int argc, char *argv[])
{
    char* msg=strdup("hello");
    char msg2[MAXSTR];

    if (strcmp(msg, "hello") == 0)
    {
        printf("the variable is hello\n");
    }

    for (int i=0; i<strlen(msg); i++)
    {
        msg[i]='x';
        printf("%d: %c\n", i, msg[i]);
    }


    
    /* overwrite the NULL until something interesting happens */

/*
    for (int p=strlen(msg); p<100; p++)
    {
        msg[p]='Z';
        printf("%d: %s\n", p, msg);
    }
*/

    strncpy(msg2, msg, MAXSTR);
    printf("msg2: %s\n", msg2);


    free(msg);

    return 0;
}

#include <stdio.h>

#define SWAP(var1, var2) { int temp=var1; var1=var2; var2=temp; } 

int main(int argc, char *argv[])
{
    int x=10;
    int y=200;

    printf("%d - %d\n", x, y);
    SWAP(x,y);
    printf("%d - %d\n", x, y);

    /* variable capture! */
    int temp=99;
    int temp2=5499;
    printf("%d - %d\n", temp, temp2);
    SWAP(temp, temp2);
    printf("%d - %d\n", temp, temp2);

    return 0;
}

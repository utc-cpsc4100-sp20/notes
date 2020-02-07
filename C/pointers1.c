#include <stdio.h>

int main(int argc, char *argv[])
{
    int x=0;
    int y=0;
    int* xp=&x;

    *(xp+1)=10;

    printf("x: %d; y: %d\n", x, y);
    return 0;
}


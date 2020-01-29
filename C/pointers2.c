#include <stdio.h>

int main(int argc, char *argv[])
{
    int x=0;
    int* xp=&x;

    *(((char*)xp)+1)=2;

    printf("x: %d\n", x);
    return 0;
}

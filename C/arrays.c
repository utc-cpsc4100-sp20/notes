#include <stdio.h>

#define SIZE 10


int main(int argc, char *argv[])
{
    // java:  int[] values = new int[10];
    int values[SIZE];

    for (int i=0; i<SIZE; i++)
    {
        values[i]=i;
    }

    for (int i=0; i<SIZE; i++)
    {
        printf("value %d = %d\n", i, values[i]);
    }
    

    return 0;
}

#include <stdio.h>

#define SIZE 10

void fill(int* ptr, int count)
{
    for (int i=0; i<count; i++)
    {
         ptr[i]=i;
        /*  *(ptr+i) = i;  */
    }
}

int* make_and_fill(int size)
{
    /* bad idea! and the compiler warns us about the stack allocated return
     * value 
     int answer[size];
    */

    /* instead, allocate an uninitialized array on the heap... */
    int* answer = (int*)malloc(size * sizeof(int));


    for (int i=0; i<size; i++)
    {
        answer[i]=i;
    }

    return answer;
}



int main(int argc, char *argv[])
{
    // java:  int[] values = new int[10];
    // int values[SIZE];
    // fill(values, SIZE);

    int* values;
    values=make_and_fill(SIZE);


    for (int i=0; i<SIZE; i++)
    {
        printf("value %d = %d\n", i, values[i]);
    }
    

    /* give back the memory allocated for this array -- requires value to be
     * allocated using malloc, calloc or the like.. not stack-allocated */

    free(values);

    return 0;
}

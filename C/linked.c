#include <stdio.h>
#include <stdlib.h>


typedef struct node
{
    int value;
    struct node* next;
} node;

node* add_front(node* list, int value)
{
    node* rval=(node*)malloc(sizeof(node));
    rval->value=value;
    rval->next=list;
    return rval;
}

void free_nodes(node* list)
{
    if (list != NULL)
    {
        free_nodes(list->next);
        free(list);
    }
}


int main(int argc, char *argv[])
{
    node* list=NULL;

    for (int i=0; i<10; i++)
    {
        list = add_front(list, i);
    }

    node* curs=list;
    while (curs != NULL)
    {
        printf("%d\n", curs->value);
        curs=curs->next;
    }

    free_nodes(list);

    return 0;
}

#include <stdio.h>
#include <string.h>


#define MAX_NAME 20

typedef struct 
{
    char name[MAX_NAME];
    int age;
}  student;

/* typedef struct student student; */

union badnumber
{
    int i;
    double d;
};

union intparts
{
    int i;
    char bytes[4];
};


int main(int argc, char *argv[])
{
    student s;
    strcpy(s.name, "bob");
    s.age=22;

    printf("name: %s\nage: %d\nsizeof: %d\n", s.name, s.age, sizeof(s));

    union badnumber bn;
    bn.i=10;
    printf("int: %d\n", bn.i);
    bn.d=99.3;
    printf("int: %lf\n", bn.d);

    printf("size: %d\n", sizeof(bn));
    printf("int: %d\n", bn.i);

    union intparts ip;
    ip.i = 0;
    ip.bytes[1]=1;
    printf("%d\n", ip.i);
    

    return 0;
}

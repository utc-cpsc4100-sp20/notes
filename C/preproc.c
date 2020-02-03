#include <stdio.h>
#include <math.h>

#define TIMES10(x)  ((x)*10)
#define PLUSONE(x) ((x)+1)
#define SQUARE(x) ((x)*(x))

int main(int argc, char *argv[])
{
    int x = TIMES10(5+1);
    printf("%d\n", x);

    x = PLUSONE(10)*2;
    printf("%d\n", x);

    double z=SQUARE(sqrt(4));
    printf("%lf\n", z);

    return 0;
}

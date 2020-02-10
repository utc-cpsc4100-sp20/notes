#include <iostream>
using namespace std;

void doSomething(int& z)
{
    z += 10;
}



int main(int argc, char *argv[])
{
    int x=1;
    int& y=x;

    cout << x << endl;
    y++;

    cout << x << endl;

    doSomething(x);

    cout << x << endl;


    return 0;
}

#include <stdio.h>
extern int g_cat;
int main(int argc,char *argv[])
{
    int * abc=&g_cat;
    printf("%d\n",*abc);
    return 0;
}



#include<stdio.h>

int main()
{
    int i,b,c,d;
    for ( i = 4; i < 1000; i++)
    {
        b=i/100;
        c=i%100/10;
        d=i%10;
        if (i==(d*d*d)+(b*b*b)+(c*c*c))
            printf("%d\n",i);
    }
    return 0;
}

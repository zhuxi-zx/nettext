#include <stdio.h>

int main()
{
    int a[5] ={1,4,42,56,82};
    int temp,i,j,k;
    printf("before number :"); 
    for(i = 0; i < 5; i++)
    {
        printf("%d\n",a[i]);
        for(j = 0; j < 4-i; j++)
        {
            if (a[j]<a[j+1])
            {
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }      
        } 
    }
    for(k = 0; k < 5; k++){
        printf("end:%d\n", a[k]);
    }
    return 0;
}
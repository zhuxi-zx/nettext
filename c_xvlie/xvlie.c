#include<stdio.h>

int main()
{
    int i,j,k,l,n,m;
    long num=0;
    for (int i = 0; i < 1024; i++)
    {
        for (int j = 0; j < 1024; j++)
        {
            for (int k = 0; k < 1024; k++)
            {
                for (int l = 0; l < 1024; l++)
                {
                    for (int n = 0; n < 1024; n++)
                    {
                        for (int m = 0; m < 1024; m++)
                        {
                            num++;
                            printf("%d\n",num);
                        }
                    }
                }
            }
        }
    }
    return 0;
}

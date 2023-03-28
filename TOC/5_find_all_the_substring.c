#include<stdio.h>
#include<conio.h>
#include<string.h>
main()
{
    int i,j,n,k;
    char a[10]="Rajish";
    i=0;
    n=strlen(a);
    for(i=0;i<n;i++)
    {
        for(j=i;j<n;j++)
        {
            for(k=i;k<j+1;k++)
            {
                printf("%c",a[k]);
            }
            printf("\n");
        }
    }
    getch();
}
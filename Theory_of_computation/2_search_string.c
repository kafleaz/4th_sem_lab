/*Write a program to search the string.*/

#include<stdio.h>
#include<string.h>
int main()
{
    char a[100],b[100];
    char *s;
    printf("Enter the string.\n");
    scanf("%s",&a);
    printf("Enter the substring to be searched.\n");
    scanf("%s",&b);
    s=strstr(a,b);
    if (s==0)
    {
        printf("String found.");
    }
    else
    {
        printf("SubString found.");
    }
    
    
}
/*Write a program for concatenation of two strings*/

#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
    char s1[100], s2[100];
    printf("Enter the first string:\n");
    scanf("%s",&s1);
    printf("Enter the second string:\n");
    scanf("%s",&s2);
    strcat(s1,s2);
    printf("%s",s1);
    getch();
    return (0);
}
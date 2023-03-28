/*write a program to find the substring in a string with a matched index number.*/
/*
#include<stdio.h>
#include<string.h>
int indexOfSub(char str[],char sub[]);
int main()
{
    int index,s1,s2;
    printf("Enter string.\n");
    scanf("%s",&s1);
    printf("Enter sub string.\n");
    scanf("%s",&s2);
    index=indexOfSub(s1,s2);
    if(index==-1)
    {
        printf("substring not found");
    }
    else
    {
        printf("Substring found at index %d",index);
    }
}
int indexOfSub(char str[],char s[])
{
    int i,j,k,l;
    l=strlen(s);
    for(i=0;str[i+l-1];i++) // i+leave-one(11111)//
    {
        k=i;
        for(j=0;j<=l-1;j++)
        {
            if(str[k]!=s[j])
            break;
            k++;
        }
        if(j==l)////leave
        return(i);
    }
    return(-1);
}
*/

#include<stdio.h>
#include<string.h>
int indexofsubstring(char str[],char s[]);
int main()
{
    int index;
    index=indexofsubstring("abababbbaabbababbbaa","aabb");
    if(index==-1)
        printf("substring not found");
    else
        printf("substring found at index %d",index);

}
int indexofsubstring(char str[],char s[])
{
    int i,j,k,l;
    l=strlen(s);
    for(i=0;str[i+l-1];i++) // i+leave-one(11111)//
    {
        k=i;
        for(j=0;j<=l-1;j++)
        {
            if(str[k]!=s[j])
            break;
            k++;
        }
        if(j==l)////leave
        return(i);
    }
    return(-1);
}

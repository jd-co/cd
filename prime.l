%{
#include<stdio.h>
int c,i,j,k=0;
%}
%%
[0-9]+ {c=atoi(yytext); 
		k=0;
		for(i=1;i<=c;i++)
		{
			if(c%i==0)
			{
				k++;
			}
		}
		if(k==2)
		{
			printf("%d prime number",c);
		}
		else
		{
			 printf("%d not a prime number",c);
			}
	}
%%
int main()
{
	yylex();
}
int yywrap()
{
	return 0;
}

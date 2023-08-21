%option noyywrap
%{
	#include<stdio.h>
%}

%%
[am]+ {printf("am is a verb");}
[talk]+ {printf("am is a verb");}
[Compiler]+ {printf("nonverb");}

%%
int main()
{       
printf("enter:");
yylex();
	return 0;
}
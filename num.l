%{ 
#include<stdio.h>
int x=0;
%}

Keyword (convert|Convert|CONVERT|to|To|TO)
NumberSystem (binary|Binary|BINARY|octal|Octal|OCTAL|hexadecimal|Hexadecimal|HEXADECIMAL)
Digit [0-9]
Dm [\t\n]
Space {Dm}+|[ ]
Text [a-zA-Z]+

%%

{Keyword} {printf("Keyword:%s\n",yytext); x++;}
{NumberSystem} {printf("NumberSystem:%s\n",yytext); x++;}
{Digit} {printf("Value:%s\n",yytext); x++;}
{Space} {}
{Text} {printf("text:%s\n",yytext); x++;}
. {}

%%

int yywrap(){return 1;}
int main() {
    yylex(); 
    return 0; 
}

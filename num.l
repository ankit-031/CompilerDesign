%{
/* Definition section */
#include<stdio.h>
#include "Numsys.tab.h"
%}
/* Rule Section */
%%
[0-9]+ {printf("Digit: %s\n",yytext); return digit;}
"Convert "|"to "|"text " {printf("Keyword: %s\n",yytext); return k;}
"binary"|"octal"|"hexadecimal" {printf("Operation: %s\n",yytext); return op;}
%%
int yywrap() {
return 1;
}
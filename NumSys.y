%{
/* Definition section */
#include<stdio.h>
#include<stdlib.h>
%}
%%token digit k op qm eol
/* Rule Section */
%%
S: A {printf("\nThis sentence is valid.\n"); return 0;};
;
A: k k k op ;
%%
void yyerror()
{
printf("Error: Invalid sentence");
exit(1);
}
//driver code
void main()
{
printf("Enter sentence: ");
yyparse(); }

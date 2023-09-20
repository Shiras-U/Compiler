%{
#include <stdio.h>
%}

%%
abc { printf("ABC"); }
.   { putchar(yytext[0]); }
%%
int yywrap(){}
int main() {
    yylex();
    return 0;
}

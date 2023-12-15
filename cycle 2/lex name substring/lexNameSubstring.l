%{
#include <stdio.h>
#include <string.h>
%}

%%
^.*Amal.* {
    printf("Contains first 4 characters of name as substring\n");
}

.* {
    printf("Doesn't contain first 4 characters of name as substring: %s\n", yytext);
}
%%

int yywrap() {}
int main() {
    yylex();
    return 0;
}

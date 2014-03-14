#!/bin/sh
cd src
bison -d -v yacc.y;
flex lex.l;

#yacc -d -v -o yacc.c yacc.y
#lex -o lex.c lex.l

# とりあえず警告を消している
gcc -w yacc.tab.c lex.yy.c main.c -DYYERROR_VERBOSE -ll -o test
cd ..
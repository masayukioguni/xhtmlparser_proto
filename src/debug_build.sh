#!/bin/sh
bison -y css.y
bison -d -v css.y;flex css.l 
gcc css.tab.c lex.yy.c -DYYERROR_VERBOSE -DYYDEBUG  -ll -o cssparser
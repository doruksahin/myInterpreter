compile:
	rm y.tab.c
	rm y.tab.h
	yacc -dvt yacc.y
	lex lex.l
	gcc lex.yy.c y.tab.c -o myInterpreter
	./myInterpreter

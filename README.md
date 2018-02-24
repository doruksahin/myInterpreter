This is a great interpreter example which can do arithmetic operations (+, -, /, *)
To compile and execute run type "./Makefile" to terminal or type "make compile".
To execute, type "./myInterpreter" to terminal.



The EBNF form of The language

!! PROGRAM, DEGISKENLER, KOMUTLAR, OKU, YAZ, TOPLA, CIKAR, CARP, BOL are keywords.

<Program> → PROGRAM id; <Declaration Section> <Main Section> 

<Declaration Section> → DEGISKENLER [<Variable List>];
<Variable List> → <Variable Def> | <Variable Def>, <Variable List>
<Variable Def> → <Variable Name> [ ESITTIR int_literal]
<Variable Name> → id

<Main Section> → KOMUTLAR {<Statement>;} 
<Statement> → <Input Stmt> | <Output Stmt> | <Assignment Stmt>
<Input Stmt> → OKU ’message’ <Variable Name>
<Output Stmt> → YAZ ’message’ [ <Expression>]
<Assignment Stmt> → <Variable Name> <-- <Expression>
<Expression> → <InfixExp> | <PostfixExp> 
<InfixExp> → <Term> | <InfixExp> (ARTI | EKSI) <Term>
<Term> → <Factor> | <Term> (CARPI | BOLU) <Factor>
<Factor> → int_literal | <Variable Name> | ( <InfixExp> )
<PostfixExp> → <PostfixExp> <PostfixExp> <Operator>
<PostfixExp> → int_literal| <Variable Name>
<Operator> → (TOPLA | CIKAR | CARP | BOL)




This is a great interpreter example which can do arithmetic operations (+, -, /, *)
To compile and execute run type "./Makefile" to terminal or type "make compile".
To execute, type "./myInterpreter" to terminal.


The EBNF form of The language

!! PROGRAM, DEGISKENLER, KOMUTLAR, OKU, YAZ, TOPLA, CIKAR, CARP, BOL are keywords.

Program → PROGRAM id; Declaration_Section Main_Section 

Declaration_Section → DEGISKENLER [Variable List];
Variable_List → Variable_Def | Variable_Def, Variable_List
Variable_Def → Variable_Name [ ESITTIR int_literal]
Variable_Name → id

Main_Section → KOMUTLAR {Statement;} 
Statement → Input_Stmt | Output_Stmt | Assignment_Stmt
Input_Stmt → OKU ’message’ Variable_Name
Output_Stmt → YAZ ’message’ [Expression]
Assignment_Stmt → Variable Name <-- Expression
Expression → InfixExp | PostfixExp 
InfixExp → Term | InfixExp (ARTI | EKSI) Term
Term → Factor | Term (CARPI | BOLU) Factor
Factor → int_literal | Variable Name | (InfixExp)
PostfixExp → PostfixExp PostfixExp Operator
PostfixExp → int_literal| Variable_Name
Operator → (TOPLA | CIKAR | CARP | BOL)




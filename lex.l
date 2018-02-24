%{
	#include "y.tab.h"
	#include <string.h>
	#include <stdio.h>	
%}













%%

"("  						return PARANTEZAC;
")"							return PARANTEZKAPA;
ARTI						return ARTI;
EKSI						return EKSI;
TOPLA						return TOPLA;
CIKAR						return CIKAR;
CARPI						return CARPI;
CARP						return CARP;
BOLU						return BOLU;
BOL							return BOL;
YAZ							return YAZ;
OKU							return OKU;
ESITTIR						return ESITTIR;
KOMUTLAR					return KOMUTLAR;
PROGRAM						return PROGRAM;
DEGISKENLER					return DEGISKENLER;
"<--"						return ASSIGN;
,							return COLON;
;							return SEMICOLON;


!!.*						;
[ \t\n]						;

[0-9]+						{yylval.integer = atoi(yytext); return int_literal;}
[a-zA-Z]([a-zA-Z0-9])*		{yylval.str = strdup(yytext); return id;}
\'.*\'						return message;








%%











int yywrap(void){
	return 1;
}


//printf("%s", yytext); 
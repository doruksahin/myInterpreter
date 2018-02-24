%{
	void yyerror(char const *s);
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
//	char *getId();
	char a;
	int makeNode(char *var);
	int getNodeValue(char *var);
	int updateNode(char *var, int val);
%}

%union{	int integer; char *str; };

%start ETU_MNA_PROGRAM

%token <str> id message
%token <integer> int_literal
%token <str> PROGRAM DEGISKENLER SEMICOLON COLON  KOMUTLAR ESITTIR OKU YAZ 
%token <str> ARTI EKSI CARP BOL TOPLA CIKAR ASSIGN CARPI BOLU PARANTEZAC PARANTEZKAPA


%type <str> Dec_Sec Main_Sec Var_Name
%type <integer> PostfixExpr InfixExpr Term Factor Expr










%%








ETU_MNA_PROGRAM						: PROGRAM id SEMICOLON Dec_Sec Main_Sec	{}
									;

Dec_Sec								: DEGISKENLER Var_List SEMICOLON		
									| DEGISKENLER SEMICOLON				{}
									;

Var_List							: Var_Def
									| Var_Def COLON Var_List
									;

Var_Def								: Var_Name						{makeNode($1);}
									| Var_Name ESITTIR int_literal 	{updateNode($1, $3);}
									;

Var_Name							: id 					{$$ = $1;}
									;

Main_Sec							: KOMUTLAR Stmt
									;

Stmt 								: Stmt Stmt
									| Input_Stmt
									| Output_Stmt
									| Assignment_Stmt
									;

Input_Stmt							: OKU message Var_Name SEMICOLON {int temp; scanf("%d", &temp); updateNode($3, temp);}
									;

Output_Stmt							: YAZ message SEMICOLON		//{printf("%s", $2);}
									| YAZ message Expr SEMICOLON	//{printf("%s", $2);}	
									;

Assignment_Stmt						: Var_Name ASSIGN Expr SEMICOLON			{updateNode($1, $3);}
									;

Expr								: InfixExpr						{printf("%d\n", $1);}
									| PostfixExpr					{printf("%d\n", $1);}
									;

InfixExpr							: Term							{$$ = $1;}
									| InfixExpr ARTI Term			{$$ = $1 + $3; printf("%d\n", $1 + $3);}
									| InfixExpr EKSI Term			{$$ = $1 - $3;}
									;

Term								: Factor						{$$ = $1;}
									| Term CARPI Factor				{$$ = $1 * $3;}
									| Term BOLU Factor				{$$ = $1 / $3;}
									;

Factor								: int_literal					{$$ = $1;}
									| Var_Name						{$$ = getNodeValue($1);}
									| PARANTEZAC InfixExpr PARANTEZKAPA				{$$ = $2;}

PostfixExpr						: PostfixExpr PostfixExpr TOPLA			{$$ = $1 + $2;}	
								| PostfixExpr PostfixExpr CIKAR			{$$ = $1 - $2;}	
								| PostfixExpr PostfixExpr CARP			{$$ = $1 * $2;}	
								| PostfixExpr PostfixExpr BOL 			{$$ = $1 / $2;}	
								| int_literal							{$$ = $1;}	
								| Var_Name							{$$ = getNodeValue($1);} 
								;














%%





char *c;
void updateId(char *s){
	c = s;
}
void printId(){
	printf("%s", c);
}






struct LinkedList{
    char *name;
    int num;
    struct LinkedList *next;
 };

typedef struct LinkedList *node;
node head;

node createNode(){
	node temp = (node)malloc(sizeof(struct LinkedList));
	temp->num = 0;
	temp->next = NULL;
	temp->name = NULL;
	return temp;
}


int updateNode(char *var, int val){
	if(head == NULL){
		head = createNode();
		head->name = var;
		head->num = val;
		head->next = NULL;
		return 0;
	}
	node walk = head;

	while(1){
		if(!strcmp(walk->name, var)){
			walk->num = val;
			return 0;
		}
		else if(walk->next != NULL)
			walk = walk->next;

		else{
			node new = createNode();
			walk->next = new;
			new->name = var;
			new->num = val;
		}

	}	

}


int makeNode(char *var){
	
	if(head == NULL){
		head = createNode();
		head->name = var;
		head->num = 0;
		head->next = NULL;
		return 0;
	}
	node walk = head;

	while(1){
		if(strcmp(walk->name, var)){
			return 0;
		}
		else if(walk->next != NULL)
			walk = walk->next;

		else{
			node new = createNode();
			walk->next = new;
			new->name = var;
			new->num = 0;
		}

	}

}



int getNodeValue(char *var){
	if(head == NULL){
		return -100;						
	}
	node walk = head;

	while(1){
		if(!strcmp(walk->name,var))
			return walk->num;
		
		else if(walk->next != NULL)
			walk = walk->next;

		else
			return -100;
		

	}


}

 void yyerror (char const *s) {
   fprintf (stderr, "%s\n", s);
 }

int main(void){
	struct LinkedList{
	    char *name;
	    int num;
	    struct LinkedList *next;
	 };

	typedef struct LinkedList *node;
	node head;

	return yyparse();
}

//printf("%s", $2); 
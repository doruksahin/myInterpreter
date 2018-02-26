/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    id = 258,
    message = 259,
    int_literal = 260,
    PROGRAM = 261,
    DEGISKENLER = 262,
    SEMICOLON = 263,
    COLON = 264,
    KOMUTLAR = 265,
    ESITTIR = 266,
    OKU = 267,
    YAZ = 268,
    ARTI = 269,
    EKSI = 270,
    CARP = 271,
    BOL = 272,
    TOPLA = 273,
    CIKAR = 274,
    ASSIGN = 275,
    CARPI = 276,
    BOLU = 277,
    PARANTEZAC = 278,
    PARANTEZKAPA = 279
  };
#endif
/* Tokens.  */
#define id 258
#define message 259
#define int_literal 260
#define PROGRAM 261
#define DEGISKENLER 262
#define SEMICOLON 263
#define COLON 264
#define KOMUTLAR 265
#define ESITTIR 266
#define OKU 267
#define YAZ 268
#define ARTI 269
#define EKSI 270
#define CARP 271
#define BOL 272
#define TOPLA 273
#define CIKAR 274
#define ASSIGN 275
#define CARPI 276
#define BOLU 277
#define PARANTEZAC 278
#define PARANTEZKAPA 279

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 13 "yacc.y" /* yacc.c:1909  */
	int integer; char *str; 

#line 105 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

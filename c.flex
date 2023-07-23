
   
import java_cup.runtime.*;
      
%%
   
%class Lexer
%line
%column
%cup
%{   

    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }

    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]
digit = [0-9]
number = {digit}+
letter = [a-zA-Z]
identifier = {letter}+
   
%%

"else"             { return symbol(sym.ELSE); }
"if"               { return symbol(sym.IF); }
"int"              { return symbol(sym.INT); }
"return"           { return symbol(sym.RETURN); }
"void"             { return symbol(sym.VOID); }
"while"            { return symbol(sym.WHILE); }

"+"                { return symbol(sym.PLUS); }
"-"                { return symbol(sym.MINUS); }
"*"                { return symbol(sym.TIMES); }
"/"                { return symbol(sym.OVER); }
"<"                { return symbol(sym.LT); }
"<="               { return symbol(sym.LTEQ); }
">"                { return symbol(sym.GT); }
">="               { return symbol(sym.GTEQ); }
"=="               { return symbol(sym.EQ); }
"!="               { return symbol(sym.NOTEQ); }
"="                { return symbol(sym.ASSIGN); }
";"                { return symbol(sym.SEMI); }
","                { return symbol(sym.COMMA); }
"("                { return symbol(sym.LPAREN); }
")"                { return symbol(sym.RPAREN); }
"["                { return symbol(sym.LBRACKET); }
"]"                { return symbol(sym.RBRACKET); }
"{"                { return symbol(sym.LBRACE); }
"}"                { return symbol(sym.RBRACE); }

{identifier}       { return symbol(sym.ID, yytext()); }
{number}           { return symbol(sym.NUM, yytext()); }
{WhiteSpace}*      { /* skip whitespace */ }   
.                  { return symbol(sym.error); }

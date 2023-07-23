# C-Minus Compiler: C-Language - Scanner, Parser and Semantics Analyser (with limited functionality)

## Data types covered
int, int array, void

## statements covered 
while loop, if else statements, declaration statements, arithmetic operations, assignment operations, conditional operations

## Softwares/libraries used 
- Java JFlex to generate Scanner
- Java CUP to generate Parser

## File Structure
- c.jflex: contains scannar specifications
- c.cup: container parser specifications and grammar for C-language. Contains instructions to generate Parse tree and symbol table
- absyn folder: contains structure for abstract syntax tree
- symb folder: contains structure for symbol table and code for type checking
- java folder: contains supporting library
- Main.java: Main function file 
- test.cm: test input file
- fact.cm: contains input code to test the factorial function
- sort.cm: contains input code to test the sort function
- makefile: contains instruction to compile and test 

## Run and Test the program

To run and test: 
```
$ make
```
This should be in the main directory. It will compile the program and take input from test.cm file to generate a parse tree and symbol table. 
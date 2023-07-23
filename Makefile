JAVA=java
JAVAC=javac
JFLEX=jflex
CLASSPATH=-classpath ./java/cup.jar:.
CUP=$(JAVA) $(CLASSPATH) java_cup.Main

DIRS = programs
FILES = $(wildcard $(DIRS:=/*.cm))

all: Main.class
	java -classpath ./java/cup.jar:. Main test.cm	

Main.class: symb/*.java symb/exceptions/*.java absyn/*.java parser.java sym.java Lexer.java Main.java

%.class: %.java
	$(JAVAC) $(CLASSPATH)  $^

Lexer.java: c.flex
	$(JFLEX) c.flex

parser.java: c.cup
	$(CUP) -expect 3 < c.cup

		




   
import java.io.*;
import java.util.*;
   
class Main {
  static private List<String> cmds = Arrays.asList("-a", "-s");

  static public void main(String args[]) {
    String filename;

    filename = args[args.length - 1];

    try {
      parser p = new parser(filename, cmds, new Lexer(new FileReader(filename)));
      Object result = p.parse().value;      
    } catch(Exception e) {
      e.printStackTrace();
    }
  }
}
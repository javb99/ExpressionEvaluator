grammar Expression;

s : e;

/*
 * This grammar will always give multiplication higher precedence than addition.
 * Why? ANTLR decides precedence-related issues by favoring the first alternate.
 * e MULT e comes before e ADD e, so it gets higher precedence, so extra work required.
 */
e : '(' e ')'   # Parens
  | '|' e '|'   # Abs
  | e '^' e     # Exp
  | e MULT e 	# Mult
  | e DIV e     # Div
  | e ADD e 	# Add
  | e SUB e     # Sub
  | FLOAT 		# Float
  ;

ADD : '+';
SUB : '-';
MULT: '*';
DIV : '/';
FLOAT : INT | INT '.' [0-9]+ ;
INT : '-'? [0-9]+;
WS : [ \t\n]+ -> skip ;

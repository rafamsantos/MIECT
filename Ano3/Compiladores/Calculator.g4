grammar Calculator;
program:
    stat* EOF;
stat:   
    expr? NEWLINE           #Exp
    |assignement? NEWLINE   #Assign
    ;

assignement: ID '=' expr;

expr:  
    expr op=('*'|'/'|'%') expr  #ExprMultDivMod
    |expr op=('+'|  '-') expr   #ExprAddSub
    |Integer                    #ExprInteger
    |'(' expr ')'               #ExprParent
    |ID                         #ExprID
    ;
ID: [a-zA-Z_]+;
Integer:[0-9]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip; 
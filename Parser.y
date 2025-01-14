{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 

%left '+'

%token 
    num         { TokenNum $$ }
    ','         { TokenComma }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    '!'         { TokenNot }
    "=="        { TokenBoolEq }
    "!="        { TokenBoolDif }
    '>'         { TokenBig }
    '<'         { TokenSmall }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '['         { TokenLBracket }
    ']'         { TokenRBracket }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    Bool        { TokenBoolean }
    Num         { TokenNumber }
    ':'         { TokenColon }

%%

Exp         : num                           { Num $1 }
            | true                          { BTrue }
            | false                         { BFalse }
            | Exp '+' Exp                   { Add $1 $3 }
            | Exp '-' Exp                   { Sub $1 $3 }
            | Exp '*' Exp                   { Mul $1 $3 }
            | Exp "&&" Exp                  { And $1 $3 }
            | Exp "||" Exp                  { Or $1 $3 }
            | '!' Exp                       { Not $2 }
            | Exp "==" Exp                  { Eq $1 $3 }
            | Exp "!=" Exp                  { Dif $1 $3 }
            | Exp '>' Exp                   { Big $1 $3 }
            | Exp '<' Exp                   { Small $1 $3 }
            | if Exp then Exp else Exp      { If $2 $4 $6 }
            | var                           { Var $1 }
            | '\\' var ':' Type "->" Exp    { Lam $2 $4 $6 }
            | Exp Exp                       { App $1 $2 }
            | '(' Exp ')'                   { Paren $2 }
            | let var '=' Exp in Exp        { Let $2 $4 $6 }
            | '[' ExpList ']'               { ExprList $2 }

ExpList    : Exp                            { [$1] }
           | Exp ',' ExpList                { $1 : $3 }

Type    : Bool                              { TBool }
        | Num                               { TNum }
        | '(' Type "->" Type ')'            { TFun $2 $4 }

{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}
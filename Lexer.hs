module Lexer where 

import Data.Char 

data Expr = BTrue
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mul Expr Expr
          | And Expr Expr 
          | Or Expr Expr 
          | Not Expr
          | Eq Expr Expr 
          | Dif Expr Expr 
          | Big Expr Expr 
          | Small Expr Expr 
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr 
          | ExprList [Expr]
        deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd
           | TokenSub
           | TokenMul
           | TokenAnd 
           | TokenOr
           | TokenNot
           | TokenBoolEq
           | TokenBoolDif
           | TokenBig
           | TokenSmall
           | TokenIf 
           | TokenThen 
           | TokenElse
           | TokenVar String 
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet 
           | TokenEq 
           | TokenIn
           | TokenColon
           | TokenBoolean 
           | TokenNumber
           | TokenLBracket
           | TokenRBracket
           | TokenComma
           deriving (Show, Eq)

isSymb :: Char -> Bool 
isSymb c = c `elem` "+&\\->()=:*|!><"

lexer :: String -> [Token]
lexer [] = []
lexer ('[':cs) = TokenLBracket : lexer cs
lexer (']':cs) = TokenRBracket : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isSymb c = lexSymbol (c:cs)
             | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of 
                 ("+", rest)  -> TokenAdd : lexer rest 
                 ("-", rest)  -> TokenSub : lexer rest 
                 ("*", rest)  -> TokenMul : lexer rest 
                 ("&&", rest) -> TokenAnd : lexer rest 
                 ("||", rest) -> TokenOr : lexer rest 
                 ("!", rest)  -> TokenNot : lexer rest 
                 ("==", rest) -> TokenBoolEq : lexer rest 
                 ("!=", rest) -> TokenBoolDif : lexer rest 
                 (">", rest)  -> TokenBig : lexer rest 
                 ("<", rest)  -> TokenSmall : lexer rest 
                 ("\\", rest) -> TokenLam : lexer rest 
                 ("->", rest) -> TokenArrow : lexer rest 
                 ("=", rest)  -> TokenEq : lexer rest 
                 (":", rest)  -> TokenColon : lexer rest 
                 _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             ("let", rest) -> TokenLet : lexer rest 
             ("in", rest) -> TokenIn : lexer rest 
             ("Num", rest) -> TokenNumber : lexer rest 
             ("Bool", rest) -> TokenBoolean : lexer rest 
             (var, rest) -> TokenVar var : lexer rest 



package org.ziglang.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static org.ziglang.psi.ZigLangTypes.*;

%%

%{
  public ZigLangLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class ZigLangLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITESPACE=[\s]+
COMMENT="//".*
INTEGER=[0-9]+
STRINGLITERALSINGLE=\\"[^\\\"]*\\"
ID=[A-Za-z_][A-Za-z0-9_]*

%%
<YYINITIAL> {
  {WHITE_SPACE}              { return WHITE_SPACE; }

  "pub"                      { return PUB; }
  "fn"                       { return FN; }
  "const"                    { return CONST; }
  "var"                      { return VAR; }
  "="                        { return EQUAL; }
  "or"                       { return OR; }
  "and"                      { return AND; }
  "=="                       { return EQUALEQUAL; }
  "<"                        { return LARROW; }
  ">"                        { return RARROW; }
  "!"                        { return EXCLAMATIONMARK; }
  "!="                       { return EXCLAMATIONMARKEQUAL; }
  "<="                       { return LARROWEQUAL; }
  ">="                       { return RARROWEQUAL; }
  "&"                        { return AMPERSAND; }
  "^"                        { return CARET; }
  "|"                        { return PIPE; }
  "orelse"                   { return ORELSE; }
  "catch"                    { return CATCH; }
  "<<"                       { return LARROW2; }
  ">>"                       { return RARROW2; }
  "+"                        { return PLUS; }
  "-"                        { return MINUS; }
  "++"                       { return PLUS2; }
  "+%"                       { return PLUSPERCENT; }
  "-%"                       { return MINUSPERCENT; }
  "||"                       { return PIPE2; }
  "*"                        { return ASTERISK; }
  "/"                        { return SLASH; }
  "%"                        { return PERCENT; }
  "**"                       { return ASTERISK2; }
  "*%"                       { return ASTERISKPERCENT; }
  "if"                       { return IF; }
  "return"                   { return RETURN; }
  "else"                     { return ELSE; }
  "{"                        { return LBRACE; }
  "}"                        { return RBRACE; }
  "*="                       { return ASTERISKEQUAL; }
  "/="                       { return SLASHEQUAL; }
  "%="                       { return PERCENTEQUAL; }
  "+="                       { return PLUSEQUAL; }
  "-="                       { return MINUSEQUAL; }
  "<<="                      { return LARROW2EQUAL; }
  ">>="                      { return RARROW2EQUAL; }
  "&="                       { return AMPERSANDEQUAL; }
  "^="                       { return CARETEQUAL; }
  "|="                       { return PIPEEQUAL; }
  "*%="                      { return ASTERISKPERCENTEQUAL; }
  "+%="                      { return PLUSPERCENTEQUAL; }
  "-%="                      { return MINUSPERCENTEQUAL; }
  "~"                        { return TILDE; }
  "."                        { return DOT; }
  "try"                      { return TRY; }
  "["                        { return LBRACKET; }
  "]"                        { return RBRACKET; }
  ".*"                       { return DOTASTERISK; }
  ".?"                       { return DOTQUESTIONMARK; }
  ";"                        { return SEMICOLON; }
  "("                        { return LPAREN; }
  ")"                        { return RPAREN; }
  ","                        { return COMMA; }
  ":"                        { return COLON; }
  "DOT2"                     { return DOT2; }
  "AWAIT"                    { return AWAIT; }

  {WHITESPACE}               { return WHITESPACE; }
  {COMMENT}                  { return COMMENT; }
  {INTEGER}                  { return INTEGER; }
  {STRINGLITERALSINGLE}      { return STRINGLITERALSINGLE; }
  {ID}                       { return ID; }

}

[^] { return BAD_CHARACTER; }
# CompilerDesign
Text to Number System
# Steps to run
Open a prompt, cd to the directory where your ".l" and ".y" are, and compile them with:  
  
Yacc -d file.y Lex file.l  cc project1.tab.c lex.yy.c -o project1 
project1.exe  

# Output
1> Enter sentence: Convert text to binary\
   Keyword: Convert\
   Keyword: text\
   Keyword: to\
   Operation: binary\
   This sentence is valid.

2> Enter sentence: Convert text to hexadecimal\
   Keyword: Convert\
   Keyword: text\
   Keyword: to\
   Operation: hexadecimal\
   This sentence is valid.

3> Enter sentence: Convert text in octal\
   Keyword: Convert\
   Keyword: text\
   Operation: octal\
   Error: Invalid sentence


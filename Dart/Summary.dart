/*
Summary on what we have done in Dart.
 
- How to write Dart Programs.
    - dartpad.dev.
    - Tutorials Point.
    - ...
- Dart First Program Hello World Program.
- Dart Syntax: Similar to other programming languages.
  - Procedural Programming Languages.
  - Object Oriented Programming Programming Languages.
  - Features of Dart are similar to the above points.
- Dart Operators
    - Assignment Operators.
    - Arithmetic Operators.
    - Relational Operators.
    - Logical Operators.
    - Bitwise Operators.
    - Conditional Operators *
- Dart Constants: final keyword | const keyword
- Data Types: Integers, Strings, Boolean, Lists, Sets, Maps.
- Dart Enumeration
    - enum Continents
    { Asia, Aus, Eur, NA, SA, }
- Programs: Loops, Switch Case, For Loop, While Loop, Do..While Loop.
- Break, Continue statements.
- Dart Functions -> main() execution begins from the main function.
- Classes and Objects
- Exceptions.
- Recursion
- Interfaces
- Inheritance
- Abstract Classes.
- A lot of sample programs where maximum concepts are used.
*/

/*Functions:
- Block of code that is written to do a particular task.
- 
 
Recursion:
- Recursion is basically a concept where the function calls itself. 
- Recursion two things are important:
    1. It should call itself.
    2. The recursion function MUST have a stopping condition.
- If the stopping condition is not specified, then the program might go in a infinite loop causing Stack Overflow Exception.
*/
 
import 'dart:io';
 
void print_string( String str, int n )
{
    if( n>0 )
    {
        stdout.write("\n$n: $str");
        n = n - 1;
        print_string("Hello World Again",n); 
    }
}
 
void main()
{
    print_string("Hello World Again",10);
}

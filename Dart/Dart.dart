/*

 

Exception Handling:

 

- Exception is basically an event that occurs at run-time or occurs dynamically.
- This event will make the program terminate abnormally.
- To avoid this abnormal termination of the program, it is important to handle such events, at run time, and exit the program safely.

 

- Exception Handling handles Run-Time Error.
- Array Index Out Of Bounds Exception: 
- FallThroughError: 
- Divide By Zero Exception: 
- IOException: 

 

- try: the code that MIGHT generate an exception is written in the try block.
- catch: the code that will execute what to do if the exception arises.
- finally: the code that will execute whether the exception arises or not.
- on: similar to catch block.

 
void main()
{
    int numerator = 10;
    int denominator = 0;
   
    int result;
   
    try
    {
        result = numerator ~/ denominator;
        print("Result: $result");
    }
    on IntegerDivisionByZeroException
    {
        print("Cannot Divide By Zero Exception Caught");
    }
   
}
*/

void check_time( int time )
{
    if( time>20 )
    {
        throw new Timeout();
    }
}

 

void main()
{
    int time = 100;
    
    try
    {
        check_time(time);
        print("Time: $time");
    }
    catch( e )
    {
        print("Exception Caught!!! Time out.");
    }
    finally
    {
        print("In the Finally Block");
    }
}


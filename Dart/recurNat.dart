/* Print all the Natural Numbers from Lower Limit to Upper Limit using Recursion. */
 
import 'dart:io';
 
void print_naturals( int lower_limit, int upper_limit )
{
    if( lower_limit<=upper_limit )
    {
        stdout.write("$lower_limit, ");
        lower_limit = lower_limit + 1;
        if( lower_limit%10==0 )
            print("\n");
        print_naturals(lower_limit, upper_limit);
    }
}
 
void main()
{
    int lower_limit = 1, upper_limit = 100;

    print_naturals( lower_limit, upper_limit );
}

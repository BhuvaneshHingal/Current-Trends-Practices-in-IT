class InvalidNameException implements Exception
{
    String error_message() => "Invalid Name Exception Caught....";
}
void check_name( String str )
{
    for(var i=0; i<str.length; i++)
    {
        if(str[i].contains(new RegExp(r'[A-Za-z]'))==false)
        {
            throw new InvalidNameException();
        }
    }
}

void main()
{
    String name = "HELLO123";
    
    try
    {
        check_name(name);
        print("Name = $name");
    }
    catch( e )
    {
        print(e.error_message());
    }
    /*finally
    {
        print("In the Finally Block");
    }*/
}

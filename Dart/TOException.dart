class TOException implements Exception
{
    String error_message() => "Caught Timeout Exception";
}
void check_time( int time )
{
    if( time>20 )
    {
        throw new TOException();
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
        print(e.error_message());
    }
    finally
    {
        print("In the Finally Block");
    }
}

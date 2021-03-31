class InvalidMobileNumberException implements Exception
{
    String error_message() => "Invalid Mobile Number Exception Caught....";
}

void check_mobile_number(String str)
{   
    if(str.length==13)
    {
        if(str[0]=='+' && str[1]=='9' && str[2]=='1')
        {    
            for(var i=3; i<str.length; i++)
            {       
                if(str[i].contains(new RegExp(r'[0-9]'))==false)
                {
                   throw new InvalidMobileNumberException();
                }
            }
        }
        else
        {
            throw new InvalidMobileNumberException();
        }
    }
    else
    {
        throw new InvalidMobileNumberException();    
    }
}


void main()
{
    String mobile = "+911234512345";
    
    try
    {
        check_mobile_number(mobile);
        print("Mobile Number = $mobile");
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

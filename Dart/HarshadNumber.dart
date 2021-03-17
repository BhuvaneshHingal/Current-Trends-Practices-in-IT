void main()
{
int  num = 378, rem=0, sum=0, n;  
n = num;  
   
while(num > 0)
 {
    rem = num%10;  
    sum = sum + rem;  
    num = num~/10;  
 } 

if(n%sum == 0) 
    print("$n is a harshad number");  
else
    print("$n is not a harshad number");  
}

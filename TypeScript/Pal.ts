console.clear()
 
var str = "wasitacatisaw"
var flag = true
 
str = str.toLowerCase()
 
for( var i=0; i<str.length; i++ )
{
 if( str[i]!=str[str.length-i-1] )
 {
 flag = false
 break
 }
}
 
if( flag==false )
{
 console.log("Not Palindrome")
}
else
{
 console.log("Palindrome")
}

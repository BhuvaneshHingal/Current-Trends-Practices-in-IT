/* Accept 3 numbers from the user say num1, num2, and num3.
Check if num2 is between num1 and num3.
Do the program using TypeScript Functions.
 */
 
var num1: number
var num2: number
var num3: number
 
function accept()
{
 num1 = Number( prompt("Enter First Number"))
 num2 = Number( prompt("Enter Second Number"))
 num3 = Number( prompt("Enter Third Number"))
}
 
function check_if_between()
{
 if( num2>=num1 && num2<=num3 )
 {
 console.log(num2 + " is between " + num1 + " and " + num3)
 }
 else
 {
 console.log(num2 + " is NOT between " + num1 + " and " + num3)
 }
}
 
accept()
check_if_between()

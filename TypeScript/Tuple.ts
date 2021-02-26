/* Write a TypeScript Program to accept Tuple Elements from the user and display them.
Use functions to do that.
*/
 
/* Declaration of an empty Tuple of type any */
var tuple_name:any = []
 
/* Function accept_tuple to accept the tuple elements. */
function accept_tuple( tuple_name: any[] )
{
 var element: any
 var current_index = 0
 while(1)
 {
 element = prompt("Enter an Element: [-1 to end] ")
 if( element=="-1" )
 {
 break
 } 
 tuple_name[current_index] = element
 current_index = current_index + 1
 }
}
 
/* Function display_tuple to display the tuple */
function display_tuple( tuple_name: any[] )
{
 console.log(tuple_name)
}
 
/* Clearing the Console. */
console.clear()
 
/* Function Calls. */
accept_tuple(tuple_name)
display_tuple(tuple_name)

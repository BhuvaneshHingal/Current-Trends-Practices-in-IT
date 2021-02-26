/* Accept and display 2D Array */
 
var rows: number = Number( prompt("Enter How many Rows: ") )
var cols: number = Number( prompt("Enter How many Rows: ") )
 
var arr:Number[][] = [];
 
for( var i=0; i<rows; i++ )
{
 arr[i] = []
 for( var j=0; j<cols; j++ )
 {
 arr[i][j] = Number( prompt("Enter a Value "))
 }
}
 
for( var i=0; i<rows; i++ )
{
 for( var j=0; j<cols; j++ )
 {
 console.log(arr[i][j])
 }
}

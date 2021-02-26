/* Calculate the addition and subtraction of 2 Matrices */
 
var rows: number = Number( prompt("Enter Number of Rows: ") )
var cols: number = Number( prompt("Enter Number of Rows: ") )
 
var matrix1:Number[][] = []
var matrix2:Number[][] = []
var addition:Number[][] = []
 
console.log("Enter the First Matrix")
 
for( var i=0; i<rows; i++ )
{
 matrix1[i] = []
 for( var j=0; j<cols; j++ )
 {
 matrix1[i][i] = Number( prompt("Enter a value: "))
 }
}
 
console.log("Enter the Second Matrix")
 
for( var i=0; i<rows; i++ )
{
 matrix2[i] = []
 for( var j=0; j<cols; j++ )
 {
 matrix2[i][i] = Number( prompt("Enter a value: "))
 }
}
 
for( var i=0; i<rows; i++ )
{
 for( var j=0; j<cols; j++ )
 {
 addition[i][j] = matrix1[i][j] + matrix2[i][j]
 }
}

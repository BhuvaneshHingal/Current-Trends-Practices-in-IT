/* Accept a 2D Array from the user and display it in a proper format. */
var rows: number = Number(prompt("Enter the number of rows: "))
var cols: number = Number(prompt("Enter the number of columns: "))

var arr2 = []
for (let i=0; i<rows; i++)
{
  var arr = [] 
  for (let j=0; j<cols; j++)
  {
    arr[j] = Number(prompt("Enter the value: "))
  }
  arr2[i] = arr
}
 // console.log(arr2)
for (let i=0; i<rows; i++)
{
  console.log(arr2[i])
}

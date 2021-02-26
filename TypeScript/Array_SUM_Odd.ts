// Write a TypeScript program to calculate addition of odd indexed elements in the array.
var rowlen:number = Number(prompt("Enter the row of the 2-d array"));
var columnlen:number = Number(prompt("Enter the column of the 2-d array"));

// var myvar = Array(rowlen);
var myvar:Number[][] = [];

for(var i=0;i<rowlen;i++){
      myvar[i] = [];
    for(var j=0; j< columnlen;j++){
        myvar[i][j] = Number(prompt(`Enter the ${j+1} number of ${i+1} row`));
    }
}
    
console.log(myvar)

/*Write a TypeScript program to accept a tuple dynamically and print only odd terms. */
var tupleLength: number = Number(prompt("Enter length of the tuple: "))
var tuple_name = []
for(var i=0; i<tupleLength; i++)
{
    tuple_name[i] = prompt("Enter elements to be added: ")
    console.log("Entered elements are: " + tuple_name[i])
}
console.log("Length of the tuple = " + tupleLength)
for(var odd=0; odd<tupleLength; odd += 2)
{
    console.log("Odd terms = " + tuple_name[odd])
}

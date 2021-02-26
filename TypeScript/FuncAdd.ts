/* Write a TypeProgram to accept two numbers from the user and compute
the addition of the two numbers using Functions. */

var num1: number
var num2: number
var sum: number
function accept()
{
    num1 = Number(prompt("Enter 1st number: "))
    num2 = Number(prompt("Enter 2nd number: "))
}
function add()
{
    sum = num1 + num2
}
function display()
{
    console.log("Addition of " + num1 + " and " + num2 + "= " + sum)
}
accept()
add()
display()

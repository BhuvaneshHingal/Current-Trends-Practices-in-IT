/* Write a TypeScript Program to declare a Student class with following members:
1. Name
2. Marks
3. Address
Accept details of one student and display it in proper format. */

class Student
{
    name: string;
    marks: number;
    address: string;
    constructor()
    {
        this.name = "";
        this.marks = 0;
        this.address = "";
    }
    acceptDetails()
    {
        this.name = String(prompt("Enter Name: "))
        this.marks = Number(prompt("Enter Marks: "))
        this.address = String(prompt("Enter Address: "))

    }
    displayDetails()
    {
        console.log("Name: " + this.name + "\n" + "Marks: " + this.marks + "\n" + "Address: " + this.address)
    }
}

var s = new Student()
s.acceptDetails();
s.displayDetails();

class Age implements Exception { 
String error() => 'Your age is less than 18 '; 
} 
  
void main() { 
int age1 = 20; 
int age2 = 10; 
      
try{ 
    
    // Checking Age and 
    // calling if the 
    // exception occur 
    check(age1); 
    check(age2); 
} 
catch(e){ 
    
    // Printing error 
    print(e.error()); 
} 
} 
  
// Checking Age 
void check(int age){ 
if(age < 18){ 
    throw new Age(); 
} 
else
{ 
    print("You are eligible for voting."); 
} 
}

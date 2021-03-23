import 'dart:io';

void get_first(my_list)
{
    return my_list[0];
}

void get_last(my_list)
{
    return my_list[my_list.length-1];
}

bool check_if_empty(my_list)
{
    if(my_list.length==0)
        return true;
    return false;
}
void main(){
   var myList = new List();
   myList.add(10);
   myList.add(20);
   myList.add(30);
   myList.add(40);
   myList.add(50);
   
   if(myList.length>0)
   {
       var first_element = get_first(myList);
       stdout.write("First Element: $first_element");
   }
   else
   {
       stdout.write("\nList is empty. Cannot give first element");
   }
   
    if(myList.length>0)
   {
       var last_element = get_last(myList);
       stdout.write("\nLast Element: $last_element");
   }
   else
   {
       stdout.write("\nList is empty. Cannot give last element");
   }
   
   if(check_if_empty(myList)==true)
   {
       stdout.write("\nList is Empty");
   }
   else
   {
       stdout.write("\nList is not empty.");
   }
}

import 'dart:io';

void main(){
  print("Enter word:");
  String name= stdin.readLineSync().toString();
  var charList=name.split("").reversed;
  String joinChar="";
  charList.forEach((element)=>joinChar+=element);
  print("Reversed Word: $joinChar");

  if(name.toUpperCase()==joinChar.toUpperCase()){
    print("$name is Palindrome");
  }else{
    print("$name is Not Palindrome");
  }


}
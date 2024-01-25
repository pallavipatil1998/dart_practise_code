import 'dart:io';

void main(){
  print("Enter no:");
  var orgNo=stdin.readLineSync().toString();
  String doubleNo='';
  
  if(orgNo.contains('.')){
    orgNo.split('.').forEach((element)=>doubleNo+=element);
    if(palindrome(int.parse(doubleNo))){
      print("$doubleNo is Palindrome");
    }else{
      print("$doubleNo is Not Palindrome");
    }

  }else{
    if(palindrome(int.parse(orgNo))){
      print("$orgNo is Palindrome");
    }else{
      print("$orgNo is Not Palindrome");
    }
  }
  
}




bool palindrome(int no){
  int temp=no;
  int sum=0;
  
  while(temp>0){
    int rem=temp%10;
    sum=(sum*10)+rem;
    temp=temp~/10;
  }
  return no==sum;
}
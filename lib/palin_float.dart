import 'dart:io';

void main(){
  String orgValue='';
  print("Enter no:");
var no=stdin.readLineSync().toString();
if(no.contains('.')){
  no.split('.').forEach((element)=>orgValue+=element);


  /*no.split('.').forEach((element){
    orgValue=orgValue+element;
    // orgValue+=element;
  });*/

  // print(palindrome(int.parse(orgValue)));

  if(palindrome(int.parse(orgValue))){
    print("$orgValue is Palindrome no");
  }else{
    print("$orgValue is Not Palindrome no");
  }
}else{

  // print(palindrome(int.parse(no)));

  if(palindrome(int.parse(no))){
    print("$no is Palindrome no");
  }else{
    print("$no is Not Palindrome no");
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



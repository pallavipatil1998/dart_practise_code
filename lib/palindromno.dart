import 'dart:io';

void main(){
  print("Enter no:");
  int no=int.parse(stdin.readLineSync()!);
  int temp=no;
  int sum=0;

  while(temp>0){
    int rem=temp%10;
    sum=(sum*10)+rem;
    temp=temp~/10;
  }

  if(no==sum){
    print("$no is Palindrome number");
  }else{
    print("$no is Not Palindrome number");
  }


}
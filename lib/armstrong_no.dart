import 'dart:io';
import 'dart:math';

void main() {
  print("Enter no:");
  int no=int.parse(stdin.readLineSync()!);
  int digit=0;
  int temp=no;


  while(temp>0){
    temp=temp~/10;
    digit++;
  }
  // print(digit);

  temp=no;
  num sum=0;
  while(temp>0){
    int reminder=temp%10;
    sum=sum+pow(reminder,digit);
    temp=temp~/10;
  }

  // print(sum);

  if(no==sum){
    print("$no is ArmStrong Number");
  }else{
    print("$no is Not ArmStrong Number");
  }

}
import 'dart:io';

void main(){
  print("Enter UpperRange: ");
  int upperRange=int.parse(stdin.readLineSync()!);
  int no1=0;
  int no2=1;
  List<int> fiboList=[];

  int temp=0;

  while(temp<upperRange){
    fiboList.add(temp);
    no1=no2;
    no2=temp;
    temp=no1+no2;
  }

  print("Fibonacci Series from 0 to $upperRange is: $fiboList");
}
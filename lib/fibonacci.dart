import 'dart:io';

void main(){
  print("Enter how much term you want to print:");
  int term=int.parse(stdin.readLineSync()!);
  int no1=0;
  int no2=1;
  List<int> fiboList=[];
  fiboList.addAll([0,1]);

  while(fiboList.length<term){
    int temp=no1+no2;
    fiboList.add(temp);
    no1=no2;
    no2=temp;

  }

  print("Fibonacci Series: $fiboList");
}
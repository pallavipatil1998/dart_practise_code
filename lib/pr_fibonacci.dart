import 'dart:io';

void main(){
  print("Enter range:");
  // int term=int.parse(stdin.readLineSync()!);
  int range=int.parse(stdin.readLineSync()!);
  int no1=0;
  int no2=1;
  List<int> fiboList=[];
  // fiboList.addAll([0,1]);
  int temp=0;
  while(temp<range){
    fiboList.add(temp);
    no1=no2;
    no2=temp;
    temp=no1+no2;
  }

  /*while(fiboList.length<term){
    int temp=no1+no2;
    fiboList.add(temp);
    no1=no2;
    no2=temp;
  }*/

  print("Fibo series: $fiboList ");

}
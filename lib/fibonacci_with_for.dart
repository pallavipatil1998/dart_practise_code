import 'dart:io';

void main(){
  print("Enter term:");
  int term=int.parse(stdin.readLineSync()!);
  int no1=0;
  int no2=1;
  List<int> fiboList=[];
  fiboList.addAll([0,1]);
  for(int i=2;i<term;i++){
    int temp=no1+no2;
    fiboList.add(temp);
    no1=no2;
    no2=temp;
  }

  print("first $term no of  Fibonacci series :$fiboList");
}
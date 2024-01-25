import 'dart:io';
import 'dart:math';

void main(){
  print("Enter term:");
  int term=int.parse(stdin.readLineSync()!);

  List<int> armList=[];
  int no=0;

  while(armList.length<term){
    if(armstrong(no)){
      armList.add(no);
    }
    no++;
  }

  print("ArmStrong No: $armList");

}



bool armstrong(int no){

  int digit=0;
  int temp=no;

  while(temp>0){
    temp=temp~/10;
    digit++;
  }

  temp=no;
  num sum=0;
  while(temp>0){
    int reminder=temp%10;
    sum=sum+pow(reminder, digit);
    temp=temp~/10;
  }
  return no==sum;

}
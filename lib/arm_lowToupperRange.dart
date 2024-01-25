import 'dart:io';
import 'dart:math';

void main(){

  print("Enter lowerRange:");
  int lowerrange=int.parse(stdin.readLineSync()!);

  print("Enter upperRange:");
  int upperrange=int.parse(stdin.readLineSync()!);

  List<int> armList=[];

  for(int i=lowerrange;i<upperrange;i++){
    if(armstrongno(i)){
      armList.add(i);
    }
  }

  print("ArmStrong no :$armList");
}


bool armstrongno(int no){
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
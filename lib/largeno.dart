import 'dart:io';

void main(){
  print("Enter no1:");
 int no1= int.parse(stdin.readLineSync()!);
  print("Enter no2:");
  int no2= int.parse(stdin.readLineSync()!);
  print("Enter no3:");
  int no3= int.parse(stdin.readLineSync()!);

  if(no1>no2 && no1>no3){
    print("$no1 is largest no");
  }else if(no2>no1 && no2>no3){
  print("$no2 is largest no");
  }else{
    print("$no3 is largest no");
  }

}
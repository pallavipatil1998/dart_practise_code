import 'dart:io';

void main() {
  print("Enter lowerRange:");
  int lower = int.parse(stdin.readLineSync()!);
  print("Enter upperRange:");
  int upper = int.parse(stdin.readLineSync()!);

  List<int> palinList = [];

  for (int i = lower; i <= upper; i++) {
    if (palindrome(i)) {
      palinList.add(i);
    }
  }

  print("Palindrome no: $palinList");

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
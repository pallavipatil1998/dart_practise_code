import 'dart:io';

void main(){
  print("Enter term only:");
  int term=int.parse(stdin.readLineSync()!);
  int no=0;

  List<int> palinList=[];
  while(palinList.length<term){
    if(palindrome(no)){
      palinList.add(no);
    }
    no++;
  }
  print("Palindrome no: $palinList");
  print("Palin Term: ${palinList.last}");
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

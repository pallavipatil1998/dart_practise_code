import 'dart:io';

void main(){
  print("Enter term:");
  int term=int.parse(stdin.readLineSync()!);
  List<int> palinList=[];
  int no=0;

  while(palinList.length<term){
    if(palindrome(no)){
      palinList.add(no);
    }
    no++;
  }

  print("Palindrome List:$palinList");

  int addition=0;

palinList.forEach((element)=>addition+=element);
print("Addition of first $term is $addition");

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
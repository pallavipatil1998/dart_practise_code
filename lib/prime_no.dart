import 'dart:io';

void main(){
  bool isPrime=true;
  print("Enter no:");
  int no=int.parse(stdin.readLineSync()!);

  for(int i=2;i<=no/2;i++){
    if(no%i==0){
      isPrime=false;
    }
  }

  if(isPrime){
    print("$no is prime no");
  }else{
    print("$no is Not prime no");
  }

}
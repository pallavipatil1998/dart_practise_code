import 'dart:io';

void main(){

  print("Enter First nth term:");
  int term=int.parse(stdin.readLineSync()!);
  List<int> oddList=[];
  List<int> evenList=[];
  List<int> primeList=[];

  int no=1;

  while(oddList.length<term){
    if(odd(no)){
      oddList.add(no);
    }
    no++;
  }
  no=1;

  while(evenList.length<term){
    if(even(no)){
      evenList.add(no);
    }
    no++;
  }

  no=1;
  while(primeList.length<term){
    if(prime(no)){
      primeList.add(no);
    }
    no++;
  }

  print("Odd No: $oddList");
  print("Even No: $evenList");
  print("Prime No: $primeList");


}


bool odd(int no){
  return no%2!=0;
}

bool even(int no){
  return no%2==0;
}

bool prime(int no){
  bool isPrime=true;
  for(int i=2;i<=no/2;i++){
    if(no%i==0){
      isPrime=false;
    }
  }
  return isPrime;
}
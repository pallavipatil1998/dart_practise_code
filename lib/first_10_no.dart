import 'dart:io';

void main(){

  print("Enter Lowercase :");
  int lowerRange=getIntvalue();
  print("Enter UpperRange:");
  int upperrange=getIntvalue();

  List<int> oddlist=[];
  List<int> evenlist=[];
  List<int> primelist=[];

  for(int i=lowerRange;i<=upperrange;i++){
    if(odd(i)){
      oddlist.add(i);
    }
    if(even(i)){
      evenlist.add(i);
    }
    if(prime(i)){
      primelist.add(i);
    }
  }

  print("OddNo: $oddlist");
  print("EvenNo: $evenlist");
  print("PrimeNo: $primelist");

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

String getvalue()=>stdin.readLineSync()!;
int getIntvalue()=>int.parse(getvalue());
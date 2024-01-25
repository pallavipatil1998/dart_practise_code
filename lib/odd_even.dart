import 'dart:io';

void main(){
  print("Enter no");
  int num=int.parse(stdin.readLineSync()!);
  if(num%2==0){
    print("$num is Even no");
  }else{
    print("$num is Odd no");
  }
}


bool even(int no){
  return no/2==0;
}
bool odd(int no){
  return no/2!=0;
}


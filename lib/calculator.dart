import 'dart:io';

void main(){

  stdout.write("Enter no1=");
  int no1=int.parse(stdin.readLineSync()!);
  stdout.write("Enter no2=");
  int no2= int.parse(stdin.readLineSync()!);


  MathOperation math=MathOperation();


  var add=math.add(no1,no2);
  var sub=math.sub(no1,no2);
  var mul=math.mul(no1,no2);
  var div=math.div(no1,no2);


  /*var add=math.add(2, 2);
  var sub=math.sub(4, 2);
  var mul=math.mul(2, 2);
  var div=math.div(10, 2);*/


  print("Addition: $add");
  print("Subtraction: $sub");
  print("Multiplication: $mul");
  print("Division: $div");
  print("Modulus: ${math.mod(13, 2)}");
}

class MathOperation{

  int add(int a,int b){
    /*int sum=a+b;
    return sum;*/
    return a+b;
  }

  int sub(int a, int b){
    return a-b;
  }

  int mul(int a,int b){
    return a*b;
  }

  int div(int a,int b){
    return a~/b;
  }

  int mod(int a,int b){
    return a%b;
  }

}
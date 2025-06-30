// import 'dart:io';

// void main() {
//   print('enter first number');
//   int number1 = int.parse(stdin.readLineSync()!);
//   print('enter second number');
//   int number2 = int.parse(stdin.readLineSync()!);
//   Operations operations = Operations(number1, number2);
//   if (number1 != null || number2 != null) {
//     print('the sum');
//     print(operations.sum);
//     print('the sub');
//     print(operations.sub(number1, number2));
//     print('the divide');
//     operations.divide();
//   }
// }

// class Operations {
//   int? num1;
//   int? num2;
//   Operations(int num1, int num2) {
//     this.num1 = num1;
//     this.num2 = num2;
//   }
//   //sum
//   int get sum {
//     return num1! + num2!;
//   }

//   //subtraction
//   sub(int x, int y) {
//     return x - y;
//   }

//   //divide
//   divide() {
//     if (num1 == 0 && num2! != 0) {
//       print('error divide');
//     } else {
//       print(num1! / num2!);
//     }
//   }
// }
////////////////////////done
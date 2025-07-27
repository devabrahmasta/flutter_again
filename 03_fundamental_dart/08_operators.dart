// OPERATOR => menginstruksikan komputer untuk melakukan operasi

void main() {
  // OPERATOR ARITMATIKA

  var firstNumber = 4; // tanda '=' ini juga merupakan operator assignment(=)
  var secondNumber = 13;
  var sum = firstNumber + secondNumber;
  print(sum);

  // Operator	  Deskripsi
  //==========================
  //    +	      Penjumlahan
  //    -	      Pengurangan
  //    *	      Perkalian
  //    /	      Pembagian
  //   ~/	      Pembagian, mengembalikan nilai int
  //    %	      Modulo atau sisa hasil bagi

  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1

  // ingat untuk menggunakan tanda kurung yang tepat:
  print((1 + 3) * (4 - 2)); // output: 8
  // dart juga mendukung increment dan decrement:
  var a = 0, b = 5;
  a++; // a++ ini sama dengan a = a + 1
  b--;
  print(a); // output = 1
  print(b); // output = 4
}

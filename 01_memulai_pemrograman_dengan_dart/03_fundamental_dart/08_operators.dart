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
  a++; // a++ ini sama dengan a = a + 1 => increment
  b--; // b-- ini sama dengan b = b - 1
  print(a); // output = 1
  print(b); // output = 4
  
  //atau mungkin:
  var c = 0, d = 2;
  c += 5; // c = c + 5 => c = 0 + 5 
  d *= 3; // d = d * 3 => d = 2 * 3
  print(c); // output = 5
  print(d); // output = 6

  //OPERATOR PERBANDINGAN

  // Operator	Deskripsi
  // ==	      Sama dengan
  // !=	      Tidak sama dengan
  // >	      Lebih dari
  // <	      Kurang dari
  // >=	      Lebih dari sama dengan
  // <=	      Kurang dari sama dengan

  // Operator perbandingan ini akan mengembalikan nilai dalam bentuk boolean
  // contoh penggunaan:
  if(2 <= 3){
    print('Ya, 2 kurang dari sama dengan 3');
  }else{
    print('Anda salah!');
  }

  //OPERATOR LOGIKA

  //Operator	Deskripsi
  // ||	        OR
  // &&	        AND
  // !	        NOT

  // contoh:
  if(2 < 3 && 2 + 4 == 5){
    print('untuk mencetak ini semua kondisi harus benar');
  }else{
    print('2 kurang dari 3 benar, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if(false || true && true){
    print('ada satu nilai true');
  // ignore: dead_code
  }else{
    print('Jika semua false maka ini yang tampil');
  }
}

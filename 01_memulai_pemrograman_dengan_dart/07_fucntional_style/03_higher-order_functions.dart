// Higher-Order Functions
// Setelah mempelajari modul sebelumnya, Anda mungkin bertanya apa yang bisa dilakukan dengan lambda atau anonymous function?

/// kita bisa memanfaatkan lambda untuk membuat higher-order function
/// higher-order function adalah fungsi yang menggunakan fungsi lainnya sebagai parameter, menjadi tipe kembalian, atau keduanya
/// contoh : 

void myHigherOrderFunction1(String messege, Function myFunction){
  print(messege);
  print(myFunction(3, 4));
}

// Fungsi di atas merupakan higher order function karena menerima parameter berupa fungsi lain. 
// Untuk memanggil fungsi di atas, kita bisa langsung memasukkan lambda sebagai parameter maupun variabel yang berisi nilai berupa fungsi.

void main(){
  // opsi 1
  int Function(int num1, int num2) sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Hello', sum);

  // Opsi 2
  myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
}

void myHigherOrderFunction(
  String message,
  int Function(int num1, int num2) myFunction,
) {
  print(message);
  print(myFunction(3, 4));
}

// Jika disimulasikan fungsi myHigherOrderFunction akan memanggil fungsi sum yang dijadikan parameter.

// void myHigherOrderFunction(String message, Function myFunction) {
//   print(message);
//   print(myFunction(3, 4));  // sum(3, 4)    // return 3 + 4
// } 

// Namun deklarasi higher order function ini bisa menjadi sedikit tricky. 
// Misalnya kode di bawah ini tidak akan terdeteksi eror namun ketika dijalankan, aplikasi Anda akan mengalami crash. 
// Tahukah kenapa?

// void myHigherOrderFunction(String message, Function myFunction) {
//   print(message);
//   print(myFunction(4));  // => crash disini
// }

// karena kita tidak menentukan spesifikasi dari fungsi seperti jumlah parameter atau nilai kembaliannya, 
// maka semua jenis fungsi akan bisa dijalankan termasuk pemanggilan myFunction seperti di atas.
// kenapa crash?
// Karena Function myFunction itu terlalu umum.

// kita harus menentukan spesifikasi dari fungsi seperti jumlah parameter atau nilai kembaliannya, 
// maka semua jenis fungsi akan bisa dijalankan termasuk pemanggilan myFunction seperti di atas
// untuk mengatasinya kita bisa lebih spesifik menentukan seperti apa fungsi yang valid untuk menjadi parameter

void myHigherOrderFunction2(String message, int Function(int num1, int num2) myFunction){}

// pada fugnsi di atas kita perlu measukkan fungsi dengan dua parameter dan nilai kembali berupa int sebagai parameter
// pada maateri collection sebenarnya kita telah menggunakan satu fungsi yang merupakan higher order function yaitu fungsi forEach()
// sebagai contoh kita punya daftara bilangan fibonacci yang disimpan ke sebuah variable.

var fibonacci = [0, 1, 1, 2, 3, 5, 6, 8, 13];

// intellij IDEA akan menunjukkan suggestion apa aja yang perlu menjadi parameter.
// kita bisa melihat bahwa forEach membuatuhkan satu parameter berupa fungsi 

// sehingga ketika memanggil fungsi ini kita tidak bisa emlakukan operasi pada masing masing item misalnya mencetak ke konsol

// fibonacci.forEach((item) {
//   print(item);
// });


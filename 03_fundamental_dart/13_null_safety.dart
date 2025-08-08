// Null Safety => hanya ada di dart 2.12. keatas
// Kalian dapat menentukan versi Dart yang digunakan dengan mengubah berkas pubspec.yaml yang terdapat dalam project. 
// environment:
//   sdk: '>=2.12.0 <3.0.0'

// sebuah variabel umumnya memiliki satu tipedata untuk menyimpan nilai
// tapi, variabel juga bisa "tidak ada" nilai yang dikenal dengan nama null.

// nilai null terjadi jika belum diinisialisasi, 
// atau memang secara eksplisit menentukan nilai null
// String favoriteFood = null;

// kenapa null penting? karena null bisa menyebabkan suatu program mengalami 
// kesalahan Null Pointer Exception (NPE). Bahkan developer pertama kali
// menyebutkannya sebagai the billion dollar mistake.

// namun null tidak sepenuhnya buruk.

// secara default kita tidak bisa memiliki nilai null,
// kecuali kita mendeklarasikannya secara eksplisit: 
String? favoriteFood = null; 
// int age = null;               // Compile error
// tanda (?) diatas menandakan bahwa variabel favoriteFood bersifat nullable atau boleh null

// Jika kita memiliki fungsi dengan parameter non-nullable, maka argumen nullable akan terdeteksi sebagai error.
void main() {
  String? favoriteFood = null;
  // buyAMeal(favoriteFood); // Compile error
  buyAMeal2(favoriteFood);  // Success
  main2();
}

void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}

// untuk mengatasinya : 
// cara 1. ubah parameter agar dapat menerima nilai null lalu lakukan pengecekan nilai null.
void buyAMeal2(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Bought Nasi Goreng');
  } else {
    print('Bought $favoriteFood');
  }
}
// cara 2. gunakan bang operator (!) untuk memberitahu compiler bahwa variable tidak akan bernilai null
// namun jika yang dikirim ternyata null, program akan tetap crash

 
void main2() {
  String? favoriteFood = 'Mie Ayam';
  buyMeal(favoriteFood!);      // disematkan bang operator supaya mengembalikan nilai non-null
}
 
void buyMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}

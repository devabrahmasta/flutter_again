// data types => membedakan jenis antar variabel (teks atau angka) sehingga
//               dapat menghindari operasi yang bisa menyebabkan bug.

import 'dart:io'; /// ini berlaku untuk void [menu]

// dart adalah bahasa yang mendukung type inference.
// contoh : var akan menentukan otomatis tipe datanya
var greetings = 'Hello Dart!'; // String
var myAge = 20; // integers

void main() {
  // var jika tidak dinisialisasi secara langsung maka akan menjadi tipe dynamic
  var x; // dynamic
  x = 7;
  x = 'Dart is great';
  print(x);

  // kesalahan :
  // var x = 7; // int
  // x = 'Dart is great'; // Kesalahan assignment
  // print(x);
}

void menu() {
  // stdin.readLineSync() => untuk input data
  // stdout.write() => untuk input data
  // untuk bisa memakai kedua fungsi tersebut, harus memasukkan import 'dart:io';
  
  // print() vs stdout.write() :
  // print => mencetak garis baru
  // stdout => ditampilkan di baris yang sama

  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');
}

// kode lain => int.parse() => mengkonversi tipedata string to int 
// Beberapa tipe data yang didukung oleh Dart antara lain:

// Tipe	      Deskripsi	                                      Contoh
// int	      Integer (bilangan bulat)	                      5, -7, 0
// double	    Bilangan desimal	                              3.14, 18.0, -12.12
// num	      Bilangan bulat dan bilangan desimal	            5, 3.14, -99.00
// bool	      Boolean	                                        true, false
// String	    Teks yang terdiri dari 0 / beberapa karakter	  ‘Dicoding’, ‘Y’, ‘’
// List	      Daftar nilai	                                  [1, 2, 3], [‘a’, ‘b’, ‘c’]
// Map	      Pasangan key-value	                            {“x”: 4, “y”: 10}
// dynamic	  Tipe apa pun

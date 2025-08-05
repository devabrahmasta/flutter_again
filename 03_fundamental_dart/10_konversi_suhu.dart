// Katakanlah Anda diundang untuk menghadiri acara konferensi developer 
// di Amerika, namun Anda kebingungan karena ternyata Amerika menggunakan
// standar suhu Fahrenheit. Tentu jika Anda memiliki aplikasi yang dapat
// mengonversi suhu dari Fahrenheit menjadi Celsius, akan sangat berguna, bukan?
// Sebelum masuk ke pembuatan aplikasi, tentu kita harus tahu rumus konversi 
// suhu terlebih dulu. Alur aplikasi konversi suhu kita akan seperti berikut:

// Menerima input suhu fahrenheit dari pengguna.
// Melakukan konversi sesuai rumus.
// Menampilkan hasil konversi.

import 'dart:io';

void main(){
  stdout.write('Masukkan suhu dalam satuan Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);
  var celsius = (fahrenheit - 32) * 5 / 9;
  stdout.write('$fahrenheit dalam satuan fahrenheit = $celsius dalam satuan celcius');
}  
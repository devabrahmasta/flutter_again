// For Loops
// for loops ini adalah perulangan.
// bagiamana caranya jika kita ingin menampilkan angka 1 sampai 100?
// gamungkin print(1); print(2)......dst sampai 100 kan? => gak efektif
// nah disini gunanya perulangan. keyword : for

// for (inisialisasi; kondisi; increment/decrement) {
//     // kode yang akan dieksekusi berulang
// }

// void main() {
//   for (int i = 1; i <= 100; i++) {
//     print(i);
//   }
// }

// - Pertama, variabel index yang seringkali diberi nama i yang berarti index.
// Pada variabel ini kita menginisialisasi nilai awal dari perulangan yang kita lakukan.
// - Kedua, operasi perbandingan. Pada bagian ini komputer akan melakukan pengecekan
// kondisi apakah perulangan masih perlu dilakukan. Jika bernilai true maka kode di dalam blok for akan dijalankan.
// - Ketiga, increment/decrement. Di sini kita melakukan penambahan atau pengurangan variabel index.
// Jadi pada contoh di atas variabel indeks akan ditambah dengan 1 di setiap akhir perulangan.

// Challenge:
// bisakah Anda membuat program dart yang menampilkan output seperti berikut?
// *
// **
// ***
// ****
// *****
// ******
// *******
// ********
// *********
// **********

// nyerah?? jawaban dibawah !!


































void main() {
  for (var i = 1; i <= 10; i++) {
      print('*'*i);
  }
}

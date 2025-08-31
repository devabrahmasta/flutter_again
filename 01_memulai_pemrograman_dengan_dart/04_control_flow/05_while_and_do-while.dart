// While and do-while
// metode lain untuk menggunakan perulangan adalah menggunakan while.
// sama seperti for, kondisi while berjalan ketika bernilai true.

void main() {
  var i = 1;

  // untuk menampilkan angka 1 sampai 100:
  while (i <= 100) {
    print(i);
    i++;
  }

  // while tidak memiliki ketergantungan dengan variabel index seperti pada for loop.
  // while cocok digunakan di mana kita tidak tahu pasti berapa banyak perulangan yang diperlukan.

  // bentuk lain dari while adalah do-while
  i = 1;
  do {
    print(i);
    i++;
  } while (i <= 100);

  // perebedaan do-while dan while, adalah:
  // - while dicek terlebih dalhulu kondisinya, kalau bernilai true baru dijalankan.
  // - sedangkan do-while dijalankan terlebih dahulu satu kali, jika kondisinya benar baru melakukan perulangan

  // Infinite loops => perulangan tiada henti (stuck di program)
  // berikut contohnya:
  //   var i = 1;
  //   while (i < 5) {
  //   print(i);
  //   }
  // tidak terdapaat increment yang dimana i akan stuck di angka 1, dan kondisi selalu benar


  // Challenge:
  // buatlah program yang menampilkan output seperti ini, menggunakan perulangan while! 
  // **********
  // *********
  // ********
  // *******
  // ******
  // *****
  // ****
  // ***
  // **
  // *


  // nyerah? jawaban dibawah!




















































  // variabel [i] akan berulang untuk menampilkan teks tiap baris
  i = 10;
  while (i > 0) {
    // variabel [j] akan berulang untuk menampilkan teks tiap kolom
    int j = i;
    String text = "";
    while (j > 0) {
      text = text + "*";
      j--;
    }
    print(text);
    i--;
  }

}

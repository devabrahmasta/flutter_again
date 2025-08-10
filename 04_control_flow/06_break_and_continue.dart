// Break and Continue
// Break
// jika kalian menyimpan data 20 bilangan,
// dan kalian hanya ingin mencari suatu angka, dengan menampilkan urutan berapa bilangan tersebut,
// tentunya ketika hal tersebut sudah ditemukan, komputer tidak perlu melakukan perulangan lagi.
// nah disinilah kita menggunakan braeak => untuk menghentikan, dann keluar dari proses iterasi

void main() {
  // andaikan 20 bilangan prima di bawah 100
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    73,
    79,
    83,
    89,
    97
  ];

  var searchNumber = 13;
  print('Bilangan prima di antara 1-100: $searchNumber');

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break; // proses iterasi akan dihentikan ketika angka yang diinputkan sama dengan bilangan dicari.
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }

// Continue
// keyword lain yang berguna pada proses perulangan => continue.
// dengan continue kita bisa melewatkan proses iterasi dan lanjut ke proses iterasi berikutnya.
// misalnya kita ingin menampilkan angka 1 sampai 10 kecuali angka kelipatan 3.
// caranya :

  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}

// Apa itu Future

import 'dart:io';

/// untuk melakukan pemrograman secara asynchronous dengan dart, kita menggunakan Future
/// Future adalah sebuah objek yang mewakili nilai potensial atau kesalahan yang akan tersedia pada suatu waktu di masa mendatang.
/// kalian dapat membayangan future sebagai sebuah kotak paket.

/// Saat anda menerima paket tersebut, akan ada 3 kondisi yang mungkin terjadi, antara lain
/// paket masih tertutup (uncompleted),
/// paket dibuka lalu berisi barang sesuai pesanan (complated with data),
/// dan paket dibuka namun terjadi kesalahan atau tidak sesuai (competed with error)
/// Penerima dari future dapat menentukan callbacks yang akan menangani nilai atau kesalahan tersebut

//                        Uncompleted
//                             │
//                    ───────────────────
//                    │                 │
//               Completed         Completed
//               with data         with error

// perhatikan ini :

// ignore_for_file: dead_code

void main1() {
  print('Creating the future');
  print('main() done');
}

/// tentunya anda sudah tahu urutan program dan apa yang akan ditampilkan pada konsol.
/// lalu bagaimana jika perintah print yang pertama kita pindahkan ke dalam objek future

// void main() {
//   final myFuture = Future(() {
//     print('Creating the future');
//     return 12;                                              // 1. ini bisa di uncomment dn coba jalankan
//   });
//   print('main() done');
// }

// jika kode di atas dijalankan, seluruh fungsi main akan dieksekusi sebelum fungsi di dalam Future().
// ini disebabkan karena future masih berstatus uncompleted.
// sehingga ketika program dijalankan, konsol akan tampil sebagai berikut:

// Penjelasan Detail:
// main() dimulai
// Baris 2-5: Membuat objek Future, TAPI tidak langsung menjalankan kodenya
// Program lanjut ke baris 6: print('main() done')
// Setelah fungsi main selesai, BARU Future dijalankan

// main() done
// Creating the future

// Mengapa begini? Karena Dart menjalankan kode synchronous (biasa) dulu, baru asynchronous (Future).

// lantas bagaimana caranya kita membuat dan memanfaatkan future ini?

// Uncompleted
/// mari kita buat sebuah fungsi yang mengembalikan nilai Future.

// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {            // 2. ini bisa di uncomment dn coba jalankan bareng dibawahnya yg sesama no 2
//     return 'Coffee Boba';
//   });
// }

/// pada Future kita bisa menambahkan method delayes untuk menunda eksekusi kode di dalam Future
/// Di mana parameter pertama berisi durasi penundaan dan parameter kedua adalah blok kode atau fungsi yang akan dijalankan.
/// Pada kasus ini kita menggunakan delayed untuk menunda waktu eksekusi seolah kita sedang mengambil data dari internet.
/// Karena nilai yang dikembalikan pada Future berupa String, kita bisa secara eksplisit menentukan tipe parameter generic Futur<String>.

// Completed with data
/// kemudian setelah Future dijalankan, kita memerlukan handler untuk menangani status completed with data.
/// Caranya gunakan method .then() dari objek Future.

// void main() {
//   getOrder().then((value) {
//     print('Your ordered: $value');                           // 2. ini bisa di uncomment dn coba jalankan
//   });
//   print('Getting your order...');

// }

/// Fungsi getOrdr() akan dijalankan secara asynchronous hingga setelah
/// 3 detik kode Future akan dijalankan dan mengembalikan nilai

// output :
// Getting your order...
// Your ordered: Coffee Boba  // Muncul setelah 3 detik

/// Bagaimana jika objek Future menghasilkan kondisi "completed with error?" Bagaimana menanganinyaa?

// Completed with error
/// kita dapat menambahkan method .catch Error() setelah then.
/// Sehingga ketika terjadi error ataua exception di dalam Future, blok kode ini akan dijalankan.
/// Mari kita ubah sedikit kode di atas untuk mendukung skenario completed with error

// void main() {
//   getOrder().then((value) {
//     print('Your ordered: $value');
//   }).catchError((error) {
//     print('Sorry. $error');
//   });

//   print('Getting your order...');                            // 3. ini bisa di uncomment dn coba jalankan
// }

// Future<String> getOrder(){
//   return Future.delayed(Duration(seconds: 3), (){
//     var isStockAvailable = false;
//     if (isStockAvailable) {
//       return 'Coffee Boba';
//     } else {
//       throw 'Our stock is not enough.';
//     }
//   });
// }

/// Sampai sini harusnya anda sudah paham dengan ketiga state yang ada pada Future serta bagaimana menuliskan kode untuk menanganinya.
/// Seperti pada fungsi main() ada tiga blok kode yang mewakili state Future:
/// 1. fungsi getOrdre() yang berisi Future yang masih uncompleted.
/// 2. method then() yang menangani kondisi completed with data.
/// 3. Method catchError() yang menangani kondisi completed with error

/// ada satu method lagi yang bisa kita gunakan yaitu whenComplete().
/// Method ini akan dijalankan ketika suatu fungsi Future selesai dijalankan, tak peduli apakah menghasilkan nilai atau error
/// ini seperti blok finally pada try-catch-finally

void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  }).catchError((error) {
    print('Sorry. $error');            
  }).whenComplete(() {
    print('Thank you');
  });
  print('Getting your order...');
}

// .then() → callback ketika sukses
// .catchError() → callback ketika error
// .whenComplete() → callback ketika selesai

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;    // sengaja dibuat false
    if (isStockAvailable) {
      return 'Coffee Boba';         
    } else {         
      throw 'Our stock is not enough.';  // kenapa throw? karena kalau return Future dianggap sukses → data dikirim ke .then().
    }
  });
}


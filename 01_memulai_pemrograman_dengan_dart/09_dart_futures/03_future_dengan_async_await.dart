// Future dengan asyn-awaait


/// pada materi sebelumnya kita telah mempelajari Future unutk berurusan dengan proses asynchronous. 
/// Seperti yang kita tahu, penulisan kode asynchronous akan sedikit berbeda dengan proses synchronous.
/// Contohnya program pesan kopi kita sebelumnya jika dituliskan secara asynchronous akan seperti berikut

///     uncompleted
//       ^
///     ||
  // getOrder().then((value) {                    ==> completed with data 
  //   print('Your ordered: $value');
  // })
  // .catchError((error) {                      ==> completed with error
  //   print('Sorry. $error');
  // })
  // .whenComplete(() {                       ==> when complete
  //   print('Thank you');
  // });
  // print('Getting your order...');
  

// Dart memiliki keyword async dan await yang merupakan sebuah alternatif supaya kita bisa menuliskan proses asynchronous layaknya proses synchronous. 
// bagaimana caranya?

// dengan gaya penulisan synchronous, kira kira kode program pesan kopi kita akan seperti berikut:
// void main(){
//   print('Getting your order...');
//   var order = getOrder();
//   print('You order: $order');
// }

/// Namun ketika kode di atas dijalankan hasilnya tidak akan sesuai yang kita harapkan karena fungsi getOrder() merupakan objek Future

// Getting your order...
// You order: Instance of 'Future<String>'

/// output ini disebabkan karena fungsi main() masih merupakan fungis synchronous. 
/// untuk mengubahhnya menjasi fungsi asynchronous tambahkan keyword async sebelum fucntion body.

// void main() async {...}

/// kemudian tambahkan keyword await sebelum fungsi yang mengembalikan nilai Future

//var order = await getOrder();

/// dari perubahan di atas yang memanfaaatkan asyn-await kita berhasil menuliskan proses asynchronous dengan gaya synchronous.

// void main() async {
//   print('Getting your order...');
//   var order = await getOrder();
//   print('You order: $order');
// }

// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     return 'Coffee Boba';
//   });
// }


/// lalu bagaimana ketika terjadi error? caranya cukup sederhana yaitu dengan memanfaaatkan try-catch

void main() async {
  print('Getting your order...');
  print('Getting your order...');
  try {
    var order = getOrder(); // await ini tunggu Future selesai
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }
  print('Getting your order...'); // setelah menunggu baru dia keluarin ini
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 5), () {
    return 'Coffee Boba';
  });
}


/// begitu juga seperti yang telah disebutkan, method whenComplete() bisa digantikan dengan blok finally.
/// sehingga keseluruhan kode akan menjadi seperti berikut:

//  try {
//     var order = await getOrder();           ==> uncompleted
//     print('You order: $order');         ===> completed with data
//   } catch (error) {                     ===> completed with error
//     print('Sorry. $error');
//   } finally {                            ==> when complete
//     print('Thank you');
//   }
// }





// mainan

// void main() async {
//   print('Getting your order1...');
//   getOrder().then((value) {
//     print('Your ordered: $value');
//   }).catchError((error) {
//     print('Sorry. $error');            
//   }).whenComplete(() {
//     print('Thank you');
//   });
  
//   print('Getting your order2...');

//   try{
//     var numTable = await getNumberTable();
//     print('Your number table: $numTable');
//   }catch (e) {
//     print('Sorry. $e');
//   }finally {
//     print('Thank you');
//   }
//   print('Getting your order3...'); // setelah menunggu baru dia keluarin ini
// }

// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 5), () {
//     return 'Coffee Boba';
//   });
// }

// Future<int> getNumberTable() {
//   return Future.delayed(Duration(seconds: 3), () {
//     return 25;
//   });
// }


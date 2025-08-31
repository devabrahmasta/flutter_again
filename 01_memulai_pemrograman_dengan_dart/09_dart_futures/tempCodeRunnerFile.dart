void main() {
//   getOrder().then((value) {
//     print('Your ordered: $value');
//   }).catchError((error) {
//     print('Sorry. $error');            
//   }).whenComplete(() {
//     print('Thank you');
//   });
//   print('Getting your order...');
// }

// // .then() → callback ketika sukses
// // .catchError() → callback ketika error
// // .whenComplete() → callback ketika selesai

// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     var isStockAvailable = false;    // sengaja dibuat false
//     if (isStockAvailable) {
//       return 'Coffee Boba';         
//     } else {         
//       throw 'Our stock is not enough.';  // kenapa throw? karena kalau return Future dianggap sukses → data dikirim ke .then().
//     }
//   });
// }
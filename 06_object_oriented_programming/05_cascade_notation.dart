// Cascade Notation atau Cascade Operator
// operator ini memungkinkan kita melakukan beberapa urutan operasi pada object yang sama
// kita bisa mengakses property dari object dan menjalankan method di dalamnya bersamaan 
// ketika kita menginstansiasi (membuat instance/objek baru) object.
// Cascade operator keyword : .. atau ?..

import '02_class.dart';

void main(){
  var dicodingCat = Animal( '', 0, 0)  //=> ini emang gaisi titik koma ya
    ..name = 'Gray'
    ..weight = 0
    ..age = 1
    ..eat();
  
  // Contoh kode tersebut melakukan hal yang sama apabila kita menuliskan kode seperti ini:

  // var dicodingCat = Animal('', 2, 4.2);
  // dicodingCat.name = 'Gray';
  // dicodingCat.eat();



// Cascade notation (..) itu kayak shortcut untuk nulis kode yang berulang-ulang pada objek yang sama.
// jadi dengan cascade notation nulis bisa lebih ringkas

// cascade notation juga akan sering kita temui pada bulder pattern seperti ini:
// final addressBook = (AddressBookBuilder()
//       ..name = 'jenny'
//       ..email = 'jenny@gmail.com'
//       ..phone = '415-555-0100')
//       .build();

// Kapan dipakai?
// - Kalau kita mau set banyak property ke objek.
// - Kalau mau panggil beberapa method sekaligus di objek yang sama.
// - Biasanya juga dipakai di builder pattern (kayak bikin form panjang).

}
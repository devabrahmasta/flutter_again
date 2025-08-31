// List
// List sesuai namanya dapat menampung banyak data ke dalam satu objek. 
// di dalam list kita bisa menyimpan berbagaimacam tipe data, seperti boolean, int, String.
// cara penulisannya juga mudah :

List<int> numList = [1, 2, 3, 4, 5];
// kode diatas salah satu contoh list yang berisi tipe data integer.
// karena kompiler kita bisa tahu tipe data yang ada dalam objek list, maka kita tidak harus menuliskannya secara spesifik
// contoh:
var numberList = [1, 2, 3, 4, 5];
var stringList = ['Hello', 'Dicoding', 'Dart'];
// sesuai contoh, tipe data List otomatis ditentukan dari nilai-nilai yang kita tulis di dalam tanda [ ].
// Sama seperti variabel, jika kita tidak mendefinisikan nilai secara eksplisit, maka List akan menyimpan tipe dynamic

void main() {
  List dynamicList = [1, 'Dicoding', true];
  print(dynamicList.runtimeType);

// fungsi indexing ditandai dengan tanda []. kalau kita ingin mengakses posisi tertentu didalam list
// untuk melakukannya kita bisa menggunakan fungsi indexing : 


  List dynamicList1 = [1, 'Dicoding', true];
  //                  0,     1     , 2 => indeks dimulai dari angka 0
  print(dynamicList1[1]);

// Lalu apa yang akan terjadi jika kita berusaha menampilkan item dari 
// List yang berada di luar dari ukuran List tersebut? Sebagai contoh, 
// Anda ingin mengakses indeks ke-3 dari dynamicList:

  // print(dynamicList1[3]);  

  // akan terjadi error:
  // Unhandled exception:
  // RangeError (index): Invalid value: Not in range 0..2, inclusive: 3

// Masih ingat looping? Untuk menampilkan seluruh item dari list kita 
// bisa memanfaatkan looping. Contohnya perhatikan kode berikut:


  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  for (int i = 0; i < stringList.length; i++) { 
    // kita gunakan ".lenght" untuk mengetahui banyak data di dalam list (menghindari error)
    print(stringList[i]);
  }

  // Selain itu kita juga bisa menggunakan fungsi foreach melakukan perulangan untuk menampilkan data di dalam list.
  // foreach ini adalah fungsi bawaan di list, set ataupun map.

  // List<String> stringList = ["Hello", "Dicoding", "Dart"] 
  stringList.forEach((s) => print(s));
  // mekanisme di atas dikenal dengan lambda atau annonymus fucntion

  // s pada foreach adalah elemen tunggal, dari list setiap kali iterasi.
  // kalau list punya 3 element, maka foreach akan berjalan 3 kali.


  // untuk memanipulasi data di list, 
  // 1. kita pake fungsi add() =>  menambah data di akhir list
  stringList.add('Flutter');  
  print(stringList); 

  // 2. kita pake fungsi insert() => menambah data tapi bukan di akhir list
  // insert memiliki 2 parameter dengan urutan => (indeks list, data yang akan dimasukkan)
  stringList.insert(2, 'Programming'); // => menambahkan data di indeks ke 2
  print(stringList);

  // 3. mengubah nilai dalam list => kita bisa langsung diinisialisasikan:
  stringList[1] = 'Application';  
  //         ^ indeks     ^ nilai/elemen yang menggantikan

  // 4. sedangkan jika ingin remove, terdapat beberapa fungsi remove :
  // - menghapus list dengan nilai programming
  stringList.remove('Programming');

  // - menghapus list pada indeks ke-1
  stringList.removeAt(1);

  // - menghapus list pada indeks terakhir
  stringList.removeLast();

  // - menghapus list mulai indeks ke-0 sampai ke-1 (indeks ke-2 masih dipertahankan)
  stringList.removeRange(0, 2);

  print(stringList);


  // SPREAD OPERATOR
  // dart punya cara unik untuk menambahkan banyak nilai ke dalam list dengan cara singkat
  // misal : 
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [favorites, others];
  print(allFavorites);

  // output : [['Seafood', 'Salad', 'Nugget', 'Soup'], ['Cake', 'Pie', 'Donut']]
  // disini terlihat tidak menyatu, alih alih menggabungkan nilainya, yang terjadi seperti :
  // 2 kotak yang berisi buah dimasukkan ke dalam 1 keranjang belanja.
  // nah dengan spread kita bisa menuangkan buah di dalam kotak ke 1 keranjang belanja.

  var allFavorites2 = [...favorites, ...others];
  print(allFavorites2);

  // output: ['Seafood', 'Salad', 'Nugger', 'Soup', 'Cake', 'Pie', 'Donut']

  /// bagaimana dengan list yang null? kita dapat menggunakan null-aware spread operator => ...?   
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);

 
/// Output:
/// [0]
 
}
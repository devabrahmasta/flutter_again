// Set
// set ini adalah collection yang dapat menyimpan nilai unik.
// ini berguna disaat tidak ingin menyimpan data yang sama
// ada beberapa cara: 

void main(){

  Set<int> anotherSet = new Set.from([1, 4, 3, 4, 6, 1]);
  print(anotherSet);  //output {1, 4, 3, 6}
  // disini jika kita lihat hasilnya tidak ada angka yang duplikat

  // untuk menambahkan data ke dalam set kita bisa gunakan: add() atau addAll()
  var numberSet = {1, 4, 6}; 
  // => kenapa var tau ini adalah set? karena ini  {}
  // var list = [1, 2, 3];      // instance dari class List
  // var set = {1, 2, 3};       // instance dari class Set
  // var map = {"a": 1};        // instance dari class Map

  // - menambahkan data ke dalam set.
  numberSet.add(5);     // => menambahkan satu elemen
  numberSet.addAll({2, 5, 7});  // => menambahkan beberapa elemen
  print(numberSet);

  // - menghapus data set.
  numberSet.remove(3); // ini akan menghapus nilai bukan indeks ke-3
  print(numberSet);
  
  // - menampilkan data Set pada indeks tertentu
  print(numberSet.elementAt(2)); // angka di dalam adalah indeks bukan elemen/nilai


  // dart juga memiliki union dan intersection, untuk mengetahui gabungan dan irisan
  // dari 2 buah set.
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var union2 = setA.union(setA);
  var intersection = setA.intersection(setB);

  print('union : $union');
  print('union2 : $union2');
  print('intersection: $intersection');





}
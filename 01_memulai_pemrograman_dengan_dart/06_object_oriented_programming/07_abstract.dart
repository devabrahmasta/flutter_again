// Abstract Class
// sesuai namanya, abstract merupakan gambaran umum dari sebuah kelas, Ia tidak dapat direalisasikan dalam sebuah objek. 

// secara harfiah hewan itu sendiri adalah sifat. kita tiadk tahu bagaimana bentuk hewan tersebut
// berbeda dengan kucing dan burung yang bisa kita lihat dengan mata.
// oleh karena itu kita tibak boleh merealisasikan kelas Animal atau hewan menjadi object, tetapi tetap bisa menurunkan sifatnya

// untuk menjadikan sebuah kelas menjadi abstract, kita hanya perlu menambah keyword abstract sebelum penulisan kelas:

abstract class Animal {
  String name = '';
  int age = 0;
  double weight = 0;
 
  // ...
}

// Dengan begitu kelas Animal tidak dapat diinisialisasikan menjadi sebuah objek.
// var dicodingCat = Animal('Gray', 2, 4.2); 
// Error: The class 'Animal' is abstract and can't be instantiated.

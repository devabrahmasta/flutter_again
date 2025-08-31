// Closures
// suatu fungsi dapat dibuat dalam lingkup global atau di dalam fungsi lain.
// suatu fungsi yang dapat mengakses variabel di dalam lexical scope-nya disebut dengan closure

// lexicala scope berarti bahwa pada sebuah fungsi bersarang (nested functions), 
// fungsi yang beraada di dalam memiliki akses ke variabel di lingkup induknya

// contoh implementasi closure:

void main(){
  var closureExample = calculate(2);
  closureExample();
  closureExample();
}

Function calculate(base) {
  var count = 1; 

  return () => print("valaue is ${base + count++}");
}

// output: 
// Value is 3
// Value is 4

// di dalam fungsi calculate() terdapat variabel count dan mengembalikan nilai berupa fungsi.
// fungsi lambda di dalamnya memiliki akses ke variabel count karena berada pada lingkup yang sama.
// karena variabel count berada pada scope calculatee, maka umumnya varaiabel tersebut akan hilang atau dihapus 
// ketika fungsinya selesai dijalankan. Namun pada kasuss di atas fungsi lambda atau closureExample 
// masih memiliki referensi atau akses ke variabel count sehingga bisa diubah. 
// variabel pada mekanisme di atas telah tertutup (close covered), yang berarti variabel tersebut berada di dalam closure


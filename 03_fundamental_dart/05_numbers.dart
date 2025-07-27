// numbers => tipe data yang dapat menyimpan 2 jenis tipe data : int & double. 
// keyword : int => integer, double => double

// int => tidak memiliki titik desimal (bilangan bulat) => <64 bit
var number = 2020;
var hex = 0xDEADBEEF;
// double => bilangan desimal => 64 bit
var decimal = 1.2;
var pi = 3.14;
double withoutDecimal = 7; // Sama dengan double withoutDecimal = 7.0

void main() {
  // String -> int
  var eleven = int.parse('11');
  print(eleven.runtimeType); 
  // jika print .runtimeType => hasilnya akan berupa tipe data
  // jika print variabel saja => hasilnya akan berupa angka

  // String -> double
  var elevenPointTwo = double.parse('11.2');
  print(elevenPointTwo.runtimeType);

  // int -> String
  var elevenAsString = 11.toString();
  print(elevenAsString.runtimeType);

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString.runtimeType);
}
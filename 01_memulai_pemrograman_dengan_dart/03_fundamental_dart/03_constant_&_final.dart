// constant => menyimpan nilai yang tidak akan berubah (immutable) selama program berjalan
// keyword : const

const pi = 3.14;
// disini dart akan secara otomatis mendeteksi bahwa pi tipe datanya => double

// kalau ingin menambahkan tipe data secara eksplisit juga bisa :
const num pii = 3.14;

num calculateCircleArea(num radius) => pi * radius * radius;

void main() {
  var radius = 7;
  print('Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');

  // final
  final firstName = "Achmad";
  final lastName = "Ilham";

  // lastName = 'Angga';     // tidak bisa dilakukan pengubahan nilai

  print('Hello $firstName $lastName'); 
  // => final nilanya ditentukan saat program dijalankan
  // sedangkan const nilanya harus ada sebelum program dijalankan
}


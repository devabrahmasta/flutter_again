// STRING => tipe data dalam bentuk teks.
// string dapat didefinisikan menggunakan tanda petik satu / dua
// keyword : String

String singleQuote = 'Ini adalah String';
String doubleQuote = "Ini juga String";

void main() {
  // atau kita bisa menggunakan kedua tanda petik :
  print('"What do you think of Dart?" he asked');

  // kalau ada kasus seperti ini :
  // print('"I think it's great!" I answered confidently');
  //                   ^ tanda petik disini membuat tanda petik lainnya berantakan
  // solusi :
  print('"I think it\'s great!" I answered confidently');
  //                ^ berikan tanda backslash
  print("Windows path: C:\\Program Files\\Dart");
  //                      ^ contoh lain, jika ingin menggunakan backslash

  // STRING INTERPOLATION
  // => dimana kita bisa memasukkan variabel atau ekspresi ke dalam string.
  // => didefinisikan dengan simbol $
  var name = 'Messi';
  print('Hello $name, nice to meet you'); // => variabel
  print('1 + 1 = ${1 + 1}');  // => ekspresi

  // jika ingin menampilkan harga dalam bentuk $ => yup, gunakan backslash. cara lain : 
  print(r'Dia baru saja membeli komputer seharga $1,000.00'); 
  //    ^ r disini berarti raw, untuk mengabaikan string interpolation

  // kita juga bisa menggunakan unicode(nilai unik) ke dalam string. 
  // dart Unicode ini dikenal dengan runes
  // contoh :
  print('Hi \u2665!'); 
  //          ^  unicode simbol hati (♥)
}

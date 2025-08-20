// Enumerated Types
// dart bisa menyimpan banyak nilai konstan di satu tempat dan menanganinya secara bersamaan sering disebut enum/enumerations
// enums  mewakili kumpulan kkonstan yang membuat kode kita lebih jelas dan mudah dibaca.

enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

enum WeatherExample {
  sunny,
  cloudy,
  rain,
  storm;
}

// Enums pada Dart memiliki beberapa properti bawaan yang dapat kita gunakan untuk menampilkan seluruh nilai
// dalam bentuk list serta menampilkan "item" dan "indeks" dari item tersebut.

void main() {
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);

// output:
// [Rainbow.red, Rainbow.orange, Rainbow.yellow, Rainbow.green, Rainbow.blue, Rainbow.indigo, Rainbow.violet]
// Rainbow.blue
// 1

// Semenjak Dart versi 2.15,
// Enums memiliki properti baru untuk menampilkan nilai String setiap itemnya. Anda dapat gunakan properti ".name".

  print(Rainbow.blue.name); // blue

// kita juga bisa menggunakan enums ke dalam switch statements. Namun kita perlu menangani semua kemungkinan nilai enums yang ada.

  var weatherForcast = Weather.cloudy;

  switch (weatherForcast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
  }

/// dart versi 2.17 rilis dengan fitur baru lagi
/// Enums mempunyai fitur layaknya akelas yang memiliki  attribute dan behaviour.
/// dengan begitu kita dapat memberikan verabel ataupun constructor di dalam enums
}


enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weather(this.rainAmount); // => ini yang nempelin rainAmount ke semua weather... klo 2? 

  // berarti : 
  
  // sunny(15, "hot"),  // ← 2 parameter
  // const Weather(this.rainAmount, this.temperature);  // ← 2 parameter, cocok!
}

// Dengan kehadiran variabel di dalam Enums, kita dapat akses attribute rainAmount dengan cara seperti berikut:

// print(Weather.rain.rainAmount);

//



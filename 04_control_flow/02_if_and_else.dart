// If dan Else
// kita pasti akan bertemu dengan alur bercabang,
// setiap alur memiliki kondisinya masing masing,
// untuk mengecek suatu kondisi pada dart kita menggunakan keyword 'if':


// ignore_for_file: unnecessary_null_comparison

// 'if' digunakan untuk menentukan suatu kondisi:
// - jika kondisi (ekspresi) bernilai true, maka blok kode didalamnya dijalankan
// - jika kondisi bernilai false, maka blok kode didalamnya dilewatkan
void main() {
  var isRaining = true;
  print('Prepare before going to office.');

  if (isRaining) {
    print("Oh. It's raining, bring an umbrella.");
  }

  print('Going to the office.');
  // jika kalian itu mengubah variabel 'isRaining' menjadi false
  // maka kode di dalam if akan dilewatkan

  // lalu bagaimana jika ingin menambahkan kode jika nilai salah?
  // tambahkan keyword 'else' setelah if.
  var openHours = 8;
  var closedHours = 21;
  var now = 17;

  if (now > openHours && now < closedHours) {
    print("Hello, we're open");
  } else {
    print("Sorry, we've closed");
  }

  // jika ingin mengecek beberapa kondisi sekaligus
  // gunakan keyword 'else if' 
  var score = 85;

  if (score > 90) {
    print('A');
  } else if (score > 80) {
    print('B');
  } else if (score > 70) {
    print('C');
  } else if (score > 60) {
    print('D');
  } else {
    print('E');
  }

  // fitur menarik lain dari Dart adalah conditional expressions.
  // atau biasanya dikenal dengan ternary operator (if else dalam satu baris)

  // condition ? true expression : false expression
  var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";
  // jika ditranslate ke if else biasa:
  // if(now > openHours){
  //   shopStatus = "Hello, we're open";
  // }else{
  //   shopStatus = "Sorry, we've closed";
  // }

  var name = 'alice'; // => semisal namanya alice  

  // expression1 ?? expression2
  var buyer = name ?? 'user';
  // pada kode di atas jika variabel name tidak bernilai null, 
  // maka buyer akan menyimpan nilai dari name. 
  // namun jika bernilai null, buyer akan berisi ‘user’.
  // jika ditranslate :
  if(name != null){
    buyer = name;
  }else{
    buyer = 'user';
  }

}




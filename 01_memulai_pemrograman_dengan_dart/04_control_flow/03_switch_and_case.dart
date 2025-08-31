// Switch and Case 
// bagaimana jika ada banyak kondisi yang perlu dicek menggunakan if?
// kita pakai statement switch:

// switch (variable/expression) {
//   case value1:
//     // do something
//     break;
//   case value2:
//     // do something
//     break;
//   ...
//   ...
//   default:
//     // do something else
// }

// cara kerja :
// didalam kurung setelah 'switch' berisi variabel atau ekspresi yang akan dicek.
// setiap kondisi yang mungkin terjadi kita masukkan keyword case (kasus) diikuti nilai yang valid.
// kemudian, jika kondisi case sama dengan yang ada pada variabel, 
// maka setelaha tanda ":" akan dijalankan. lalu break fungsinya untuk apa?
// break diberikan untuk keluar dari switch.
// terdapat satu case terakhir yaitu default => sama seperti else pada if&else, 
// default dia dijalankan ketika tidak ada nilai yang sama dengan variabel switch 

// contoh aplikasi kalkulator yang menerapkan switch-case:
void main() {
  final firstNumber = 13;
  final secondNumber = 18;
  final operator = "+";

  switch (operator) {
    case '+': // jika operatornya bernilai "+" maka case ini akan dijalankan, sisanya tidak
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;
    case '-':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;
    case '*':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;
    case '/':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
}


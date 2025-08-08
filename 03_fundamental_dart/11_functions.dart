// Function itu digunakan untuk menghasilkan output berdasarkan input tertentu
// juga sebagai prosedur yang dapat dipakai berulang kali.
// contohnya seperti main(), print() yang selalu kita pakai.

// fungsi print akan mengambil nilai dan menampilkannya ke konsol (terminal)
// caranya sama dengan penulisan funsi main() :

// returnType functionName(type param1, type param2, ...) {
//   return result;
// }

// biasanya fungsi di dart itu memiliki return value, kecuali void => untuk prosedur berulang
// jika kalian memiliki greet 30 kali, kalian ga perlu nulis greet 30 kali. cukup dengan memanggil fungsi saja

// fungsi tanpa parameter
void greet() {
  print('Welcome to the jungle');
}

// fungsi void dengan parameter
void Greet(String name, int bornYear) {
  var age = 2025 - bornYear;
  print('Halo $name! Tahun ini anda berusia $age');
}

// fungsi yang memiliki output atau pengembalian nilai, biasanya memiliki keyword return
double average(num a, num b) {
  return (a + b) / 2;
}

// jika fungsi hanya memiliki satu baris kode, bisa disingkat menggunakan '=>' arrow syntax
void greeting() => print('Hello...');

void main() {
  var num1 = 12;
  var num2 = 20;

  // cara memanggil fungsi
  greet();
  Greet('joko', 2012);
  print('Hasil rata-rata dari $num1 & $num2 adalah ${average(num1, num2)}');
}

// OPTIONAL PARAMETER
// jika kalian menulis function seperti ini:
void greetNew(String name, int age, bool isVerified){}
// cara kalian memanggilnya pasti dengan cara :
//  greetNew('Widy', 20, true);

// nah dart mendukung optional parameter, dimana kalian tidak wajib, mengisi parameter caranya:
void greetNewUser([String name = "dico", int age = 10, bool isVerified = true]){}
//                                  ^ dico ini merupakan default value
// cara ini disebut dengan positional optional parameters.
// jadi ketika kita tidak mengisi value, maka akan diisi dengan default value
// dengan optional parameter seperti di atas kita bisa memanggil fungsi seperti berikut:
void optionalParameter() {
  greetNewUser('Widy', 20, true);
  greetNewUser('Widy', 20);
  greetNewUser('Widy');
  greetNewUser();
}

// Nilai null
// jika ingin agar bisa menyimpan null bukan default value, kita bisa menggunakan cara ini:
void greetNewUserr([String? name, int? age, bool? isVerified = false]){}
// dengan cara ini urutan parameter masih diperlukan, jika ingin mengisi parameter terakhir, maka:
//greetNewUserr(null, null, true);

// untuk mengatasi masalah di atas kita bisa memanfaaatkan named optional parameters
// dengan cara menambahkan kurung kurawal pada parameter
void greetNewUserrr({String? name, int? age, bool? isVerified}){}
// dengan cara ini kalian bisa memasukkan parameter tanpa mempedulikan urutan parameter dengan menyebutkan nama parameternya.
void namedParameters(){
    greetNewUserrr(name: 'Widy', age: 20, isVerified: true);
    greetNewUserrr(name: 'Widy', age: 20);
    greetNewUserrr(age: 20);
    greetNewUserrr(isVerified: true);
}

// kalian juga bisa menambahkan apakah parameter ini wajib diisi atau tidak dengan menambahkan 'required'
void newUser({required String name, required int age, bool isVerified = false}) {}

// intinya: 
// Function itu:
// Mesin yang bisa dipake berulang-ulang
// Merapikan kode biar gak berantakan
// Hemat waktu => tulis sekali, pake berkali-kali
// Mudah diperbaiki => ada bug? tinggal benerin 1 tempat

// Analogi terakhir: Function kayak resep masakan:
// Input: Bahan-bahan (parameter)
// Process: Langkah masak (kode function)
// Output: Makanan jadi (return value)
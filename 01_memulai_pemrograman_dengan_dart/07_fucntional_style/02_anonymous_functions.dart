// Annonymous Function
/// masih ingatkah anda adengan materi function dan cara membuatnya? seperti yang kita tahu,
/// untuk mendeklarasikan sebuah fungsi kita perlu mendefinisikan nilai kembalian dan juga nama fungsinya

int sum(int num1, int num2){
  return num1 + num2;
}

/// kebanyakan fungsi pada dart memiliki nama seperti sum(), main(), atau print()
/// Pada dart kita bisa membuat fungsi yang tidak bernama alias numeless atau anonymous (fucntion ini juga dikenal dengan nama lambda)

/// untuk membuat lambda atau anonymous function kita cukup menuliskan tanda kurung untuk menerima parameter dan body function-nya.

void main(){

  (int num1, int num2){
    return num1 + num2;
  };



// lalu bagaimana kita bisa menggunakan fungsi tersebut? 
// seperti yang telah dijelaskan sebelumnya bahwa function adalah first-class citizen,
// maka fungsi juga merupakan sebuah object yang bisa disampaikan ke dalam variabel
// Kita bisa menggunakan keyword var atau secara explisit menggunakan tipe data function.


  var sum = (int num1, num2) {
    return num1 + num2;
  };

  Function printLambda = () {
    print('This is lambda function');
  };

  // untuk memanggilnnya kita bisa langsung memanggil nama variabelnya seperti berikut: 
  printLambda();
  print(sum(3, 4));

  // selain itu lambda juga mendukung function expression untuk membuat kode fungsi menjadi lebih ringkas dengan memanfaatkan fat arraw (=>)

  var sum2 = (int num1, int num2) => num1 + num2;

  Function printLambda2 = () => print('This is lambda function');

  // Memanggil nama variabel dari anonymous function
  print(sum2(3, 4));
  printLambda2();


}




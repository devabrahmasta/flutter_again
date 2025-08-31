// variable scope
// setelah kalian memisahkan kode kalian ke fungsi yang terpisah,
// itu mempengaruhi bagaimana satu variable digunakaan

// setiap variabel itu dianggap satu lingkup selagi masih ada di
// blok kurung kurawal atau scope, lingkup ini menentukan variabel mana yang dapat dibaca

void main() {
  var isAvailableForDiscount = true;
  var price = 300000;
  num discount = 0;
  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }
  print('You need to pay: ${price - discount}');
}

// pada variabel discount itu masih bisa diakses dari dalam lingkup if()
// karena masih satu scope yaitu main().

// bagaimana jika ingin dipecah menjadi 2 bagian?
void mainDiscount() {
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0; // pembuatan variabel baru dengan scope lebih kecil
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }
  return discount;
}
// Variabel discount dideklarasikan pada fungsi checkDiscount()
// sehingga memiliki lingkup/scope pada fungsi tersebut saja. 
// nilainya jelas berbeda dengan yang ada di mainDiscount()

// beda cerita jika dideklarasi variabel secara global.
// yaitu deklarasi diluar blok manapun, variabel ini bisa diakses 
// di lingkup manapun selama masih file yang sama contoh :

var price = 300000; // => variabel global

void mainDiscount2() {
  var discount = checkDiscount(price);  // variabel price dapat diakses di main()
  print('You need to pay: ${price - discount}');
}

num checkDiscount2(num price) {
  num discount = 0;
  if (price >= 100000) {                // selain itu, ia dapat diakses juga di checkDiscount(),
    discount = 10 / 100 * price;        // bahkan, di level pengondisian if.       
  }
  return discount;
} 

// Ingat, variabel dipanggil pada lingkup yang ia miliki (tempat ia dideklarasi), 
// variabel dapat dipanggil dari lingkup yang lebih kecil, tetapi
// variabel tidak bisa dipanggil dari luar lingkupnya 

void mainDiscount3() {
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount3(num price) {
  num discount = 0;
  var discountApplied = false;      // => yang benar
  if (!discountApplied) {            // pemanggilan variabel yang salah sehingga terjadi error
    if (price >= 100000) {
      discount = 10 / 100 * price;
      // var discountApplied = true;    // proses deklarasi seharusnya terjadi sebelum pemanggilan variabel
    }
  }
  return discount;
}
// boolean => tipe data dengan nilai true or false (benar atau salah)
// keyword : bool

// nama boolean ini diambil dari nama seorang matematikawan asal inggris bernama "George Boole"
// beliau dikenal karena penciptaan aljabar boolean, yakni aljabar yang nilai variabelnya selalu benar atau salah.

bool alwaysTrue = true;
var alwaysFalse = false;
var notTrue = !true;      // => tanda ! disebut dengan operator not atau bang => untuk menegasi nilai boolean
bool notFalse = !false;

// contoh dalam pemakaian nyata :
void main() {
  if (true) {
    print("It's true");
  // ignore: dead_code
  } else {
    print("It's False"); // => funfact : ini adalah deadcode => karena tidak akan pernah dijalankan
  }
}

// Exception => kondisi dimana error saat aplikasi berjalan (runtime)
//           => ketika terjadi exception, aplikasi akan dihentikan dan program selanjutnya tidak dieksekusi

void main(){
  // jika kita membuat program seperti ini  
  // var a = 7;
  // var b = 0;
  // print(a ~/ b); //error => langsung crash 
  // print(a + b); // => ini gabakal jalan

  // untuk menanganinya, kita gunakan try dan catch
  // gimana cara kerjanya? 
  try{
    // dicoba dulu...
    var a = 7;
    var b = 0;
    print(a ~/ b); 
  }catch(e, s){ 
    // kalau ada masalah lakuin ini..
    print('Exception Happened: $e'); 
    print('Stack trace: $s'); 

    // apa itu e? s?
    // e => apa masalahnya
    // s => dimana masalahnya terjadi

    // semua ini SAMA AJA! Cuma beda nama variabel
    // catch (e) { print(e); }
    // catch (error) { print(error); }
    // catch (masalah) { print(masalah); }
    // catch (problem) { print(problem); }
    // catch (apapun) { print(apapun); }

    // yang 2 parameter juga bebas
    // catch (e, s) { }
    // catch (error, stackTrace) { }
    // catch (masalah, jejak) { }

    // karena ini variabel jadi, jika dibalik 
    // (s, e) => s disini tetaplah sebagai Exception, dan e adalah stackTrace
    // Why (e)? Programmer lazy! e = "exception" (singkat = efisien)

  }finally{
    // program disini akan selalu jalan, tidak peduli ada tidaknya error
    print('Finally: ini akan selalu jalan');
  }

  print("program selesai"); // jadi line ini tetep bakal jalan walau ada exception
  
  // ON
  // on keyword ini handle error yang spesifik
  try{
    var d = 7;
    var e = 0;
    print(d ~/ e); 
    // disini akan terjadi error karena tidak bisa dibagi dengan 0;
    // maka dari itu kita pakai on dengan error IntegerDivisionByZeroException 
  }on IntegerDivisionByZeroException{
    print('Can not devide by zero');
  }catch(e){
    print('any other error: $e'); // => bisa ditambahkan bisa tidak
  }


} 


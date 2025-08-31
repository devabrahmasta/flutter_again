##Pengenalan Dasar-Dasar Flutter
Sebelumnya kita telah belajar bagaimana cara menginstal Flutter pada komputer dan 
menjalankan aplikasi Flutter untuk pertama kalinyaa. Nah, kali ini kita akan mempelajari struktur 
project Flutter dan membuat aplikasi peretama kita. Mari kita simak uraian berikut ini.

###Struktur Project Flutter
setelah membuat project flutter pertama kali, flutter akan membuatkan struktur project. 
Ketika membuka folder project Flutter pada berkas explorer, kita akan mendapati banyak folder.

Untuk tingkat pemula kita tidak perlu mengetahui seluk-beluk struktur project secara mendetail. 
Di sini Anda hanya cukup mengenal beberapa dari folder-folder tersebut.

Berikut beberapa folder yang harus Anda ketahui:

android/
Folder ini merupakan tempat Anda untuk mengatur konfigurasi untuk aplikasi android. 
Di dalamnya terdapat file gradle, AndroidManifest, dan lain-lain. 
File-file tersebut sangat umum ketika Anda membuat aplikasi android native (menggunakan bahasa
pemrograman Java atau Kotlin), nanti Anda akan melakukan beberapa setting pada folder android seiring waktu.

ios/
Sama halnya dengan folder android, hanya saja ini untuk iOS. Folder ini merupakan tempat konfigurasi 
untuk aplikasi iOS. Ketika kita hendak membuat project flutter yang dapat berjalan pada iPhone,
Anda akan berkutat dengan folder ini.

build/
Ketika Anda melakukan build project flutter, hasil build akan ada pada folder ini. Sebagai contoh, 
ketika Anda ingin membuat file APK untuk project flutter, maka hasil file tersebut ada dalam folder 
ini. Folder ini hanya akan ada ketika sudah pernah mem-build project, dan akan terhapus jika menjalankan
flutter clean.

lib/
Ini merupakan folder utama ketika Anda mengerjakan project flutter. 
Seluruh source code flutter Anda akan berada pada folder ini.

test/
Folder ini tempat Anda menyimpan source code testing. Untuk pemula tidak akan berkutat pada folder ini.
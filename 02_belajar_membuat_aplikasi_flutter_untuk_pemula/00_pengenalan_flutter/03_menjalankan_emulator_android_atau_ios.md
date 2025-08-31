Menjalankan Emulator Android atau iOS
Sebelumnya kita telah berhasil menginstal flutter SDK, IDE, dan membuat project baru berdasarkan IDE yang digunakan. Sekarang kita akan mulai belajar cara menjalankan project Android menggunakan emulator atau device, maupun project iOS dengan menggunakan simulator.



Menjalankan di Android
Kita akan menggunakan project Flutter yang telah dibuat sebelumnya untuk dijalankan di emulator atau device Android. Ada beberapa hal yang perlu diperhatikan untuk dapat menjalankan project-nya, uraiannya adalah sebagai berikut:



Android Emulator
Sebelum menggunakan emulator, Anda perlu memastikan beberapa syarat.

Virtualization
Untuk menjalankan emulator di dalam Android Studio, pastikan aspek virtualization. Sistem Anda harus memenuhi persyaratan, yakni ketentuan prosesor dan sistem operasi dari laptop/PC yang Anda gunakan.
Processor
Intel: Jika Anda menggunakan processor Intel, maka pastikan bahwa processor tersebut mendukung Intel VT-X, Intel EM64T (Intel 64), dan Execute Disable (XD) Bit functionality.
Processor Intel mampu menjalankan emulator di sistem operasi Windows, Linux, mau pun MacOS.
AMD: Jika Anda menggunakan AMD, maka pastikan bahwa ia mendukung AMD Virtualization (AMD-V) dan Supplemental Streaming SIMD Extensions 3 atau yang biasa disebut dengan SSSE3.
Processor AMD hanya bisa menjalankan emulator di sistem operasi Linux.


Persiapan Running menggunakan Emulator
Untuk menjalankan aplikasi, klik menu Tools, lalu pilih Device Manager.
dos:5ed9da1b2366a43d67f277e0f51c9cfb20220328141149.jpeg
Untuk membuat emulator baru, klik tombol Create device atau Create virtual device.
Halaman Select Hardware akan muncul.
Jika Anda ingin membuat spesifikasi hardware (perangkat keras) sendiri, pilih New Hardware Profile. Anda dapat menentukan konfigurasi hardware sesuai dengan kebutuhan Anda. Ingatlah untuk menggunakan konfigurasi emulator yang sesuai dengan kemampuan laptop atau komputer yang Anda gunakan. Setelah itu klik Next.

Halaman System Image akan muncul.
Pada halaman ini Anda dapat memilih versi Android dari emulator yang akan Anda buat. 
Pilih versi yang sudah diunduh, misal Pie. 
Lihat tombol download di sebelah kanan. 
Anda perlu mengunduh terlebih dahulu jika ingin menggunakannya. 
Setelah itu klik Next.

Halaman Verify Configuration akan muncul.
Pada halaman ini Anda bisa mengubah konfigurasi hardware yang telah ditentukan sebelumnya. 
Tekan tombol Show Advanced Setting pada bagian kiri bawah. 
Jika sudah selesai, klik Finish. 
Pengaturan emulator sudah selesai dan bisa langsung dijalankan. 
Anda dapat membuka emulatornya dengan menekan tombol hijau yang ada di sebelah kanan.


##Android Device
Selain menggunakan Android Emulator, Anda juga dapat melakukan run atau debugging menggunakan perangkat smartphone asli. 
Menjalankan aplikasi menggunakan perangkat fisik memiliki beberapa kelebihan jika dibandingkan dengan emulator, yaitu:

Lebih cepat,
Lebih ringan, dan
Lebih mudah.
Dengan menggunakan peranti smartphone asli, kita dapat memastikan bahwa aplikasi 
kita berjalan dengan wajar ketika sudah sampai di tangan pengguna. Kendala dari 
pendekatan ini adalah beragamnya model peranti yang ada di pasaran. 
Namun, pembahasan mengenai hal tersebut tidak tercakup dalam kelas ini.

Mari ikuti langkah-langkah untuk menjalankan proses run atau debugging. 
Tampilan dari langkah berikut bisa dipastikan akan berbeda dengan peranti yang Anda pakai. 
Akan tetapi secara garis besar langkahnya akan sama.

Pastikan peranti yang akan dipakai sesuai dengan target SDK atau paling tidak mendukung versi SDK terendah yang digunakan aplikasi.
Buka setting dan masuk ke dalam menu About. Pada halaman menu ini, Anda perlu menemukan informasi tentang Build number.

Kemudian tekan Build number sebanyak 7 kali.

Kembali ke menu setting di awal dan akan muncul menu baru di bawah about yaitu Developer Options.

Masuk ke dalam menu Developer Options dan pastikan opsi USB Debugging Mode sudah dalam keadaan On.

Setelah menyelesaikan pengaturan pada peranti, peranti pun dapat dihubungkan dengan laptop atau komputer yang Anda pakai.


Catatan: Beberapa vendor smartphone memiliki sistem operasi yang unik. Tampilan setting dan letak opsi bisa jadi berbeda dengan gambar di atas. Beberapa vendor juga mengharuskan Anda untuk mengunduh driver khusus sebelum bisa menghubungkannya ke Android Studio. Kami sarankan untuk mengunjungi website atau membaca petunjuk yang sesuai dengan vendor dari peranti Anda.


##Menjalankan di iOS
Kita akan menggunakan project Flutter yang telah dibuat sebelumnya untuk dijalankan di iOS simulator. Ada beberapa hal yang perlu diperhatikan untuk dapat menjalankan project-nya, uraiannya adalah sebagai berikut:



iOS Simulator
iOS Simulator atau Simulator adalah aplikasi yang digunakan untuk menjalankan aplikasi iOS. Simulator merupakan aplikasi bawaan dari XCode.

Selain dari Simulator, sebenarnya kita bisa menggunakan device iphone asli. Akan tetapi untuk menjalankan di device asli kita memerlukan akun Apple developer. Jadi untuk menyederhanakan masalah, di modul ini hanya akan diajarkan dengan media Simulator saja.

Ikuti langkah berikut ini untuk membuka Simulator:

Buka terminal dan jalankan kode berikut ini:
open -a Simulator
Aplikasi simulator akan muncul, contohnya seperti gambar di bawah ini:
20200615183418748ec5eb05066ff786da4e119f6ef1c6.png
Pastikan Simulator yang Anda jalankan adalah 64-bit (Iphone 5 ke atas), jika belum maka ganti konfigurasinya dengan mengakses lewat Device atau File -> Open Devices (versi terbaru).
Catatan: Contoh di atas diambil dengan MacOS Catalina. Jika Anda menggunakan versi di bawahnya ada kemungkinan perbedaan tampilan. Jika Anda menemui masalah silakan bertanya di forum diskusi.
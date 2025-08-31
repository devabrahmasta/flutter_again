Pengenalan Dart Futures 

sejauh ini kita telah menuliskan kode secara synchronous. 
Lebih lanjut, pada modul ini kita akan mempelajari kode yang bekerja secara asynchronous.
Sebelum membahas asynchronous lebih dalam, kita akan bahas dahulu apa perbedaan synchronous dan asynchronous.

Synchronous vs asynchronous

dalam synchronous progam, kode program dijalankan secara berurutan dari atas ke bawah.
Artinya jika kita menuliskan dua baris kode maka baris kode kedua tidak bisa dieksekusi sebelum kode baris pertama selesai dieksekusi.
Kita bisa bayangkan ketika sedang berada dalam antarian kasir.
Kita tidak akan dilayani sebelum semua antrian di depan kita selesai dilayani, 
begitupula orang di belakang kita pun harus menunggu gilirannya.

dalam asynchronous program, jika kita menuliskan dua baris kode, 
kita dapat membuat baris kode kedua dieksekusi tanpa harus menunggu kode pada baris pertama selesai dieksekusi.
dalam dunia nyata bisa kita bayangkan dengan memesan kopi melalui pelayan, di mana sembari menunggu pesanan kita  datang, 
kita dapat melakukan aktivitas lain seperti membuka laptop atau menulis.


═══════════════════════════════════════════════════════════════════════════════════
                        SYNCHRONOUS  vs  ASYNCHRONOUS
═══════════════════════════════════════════════════════════════════════════════════

    ┌─────────────┐                       ┌─────────────┐
    │ Process A   │                       │ Process A   │
    └─────────────┘                       └─────────────┘
           │                                     │
           ▼                                     ▼
    ┌─────────────┐                       ┌─────────────┐
    │      ▓      │                       │      ▓      │
    └─────────────┘                       └─────────────┘
           │                                     │
           │                                     │
           └──────────────►                      └──────────────►
                          │                      │              │
                          ▼                      │              ▼
              ┌─────────────────┐                │   ┌─────────────────┐
              │   Process B     │                │   │   Process B     │
              └─────────────────┘                │   └─────────────────┘
                          │                      │              │
                          │                      │              │
                          │                      │              │
       Wait for           │                   Continue          │
      Response            │                   Working           │
           │              │                      │              │
           ▼              │                      ▼              │
    ┌─────────────┐       │                ┌─────────────┐      │
    │      ▓      │◄──────┘                │      ▓      │      │
    └─────────────┘                        └─────────────┘      │
           │                                     │              │
           │                                     │              │
           │                                     │              │
           │                                     │              │
           │                                     │◄─────────────┘                                   
           │                                     │
    ┌─────────────────┐                 ┌─────────────────┐
    │  Get Response   │                 │  Get Response   │
    └─────────────────┘                 └─────────────────┘


program asynchronous memungkinkan suatu operasi biasa berjalan semabri menunggu operasi lainnya selesai.
Umumnya kita memanfaatkan asynchronous pada operasi yang besar dan membutuhkan waktu lama, seperti 
mengambil data dari internet atau api menyimpan data ke database, dan membaca data dari sebuah berkas.
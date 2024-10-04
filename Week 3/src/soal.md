**PRAKTIKUM 1**

**LANGKAH 1 & 2**
pada kodingan yang ada terdapat beberapa kesalahan sintaksis pada kode tersebut. Dart menggunakan else if dengan huruf kecil, dan juga tidak ada kata kunci Else. sehingga harus adanya perbaikan seperti di gambar langkah 2

**Langkah 3**
Terjadi eror yang disebabkan oleh 
 * Deklarasi variabel test dua kali: adanya percobaan mendeklarasikan ulang variabel test dengan tipe data String, padahal variabel test sudah dideklarasikan sebelumnya sebagai String. Ini menyebabkan error karena tidak bisa mendeklarasikan ulang variabel dengan nama yang sama di dalam scope yang sama.

Kesalahan tipe data dalam kondisi if: adanya penetapan nilai "true" (sebagai string) ke variabel test dan kemudian mencoba memeriksa kondisi if (test). Ini tidak valid karena Dart mengharapkan nilai boolean (true atau false), bukan string.

**Praktikum 2**

**Langkah 1 & 2**
1. Error terjadi karena variabel counter belum diinisialisasi sebelum digunakan di dalam loop while. Kompilator membutuhkan variabel untuk memiliki nilai awal sebelum bisa digunakan dalam operasi seperti perbandingan atau penambahan.

**Langkah 3**
pada hal ini ada hal yang harus diperhatikan :

1. Tidak ada error** pada kode yang kamu berikan.
2. `while` loop** mencetak angka dari 0 hingga 32.
3. `do-while` loop** mencetak angka dari 33 hingga 76.

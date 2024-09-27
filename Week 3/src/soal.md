**PRAKTIKUM 1**

**LANGKAH 1 & 2**
pada kodingan yang ada terdapat beberapa kesalahan sintaksis pada kode tersebut. Dart menggunakan else if dengan huruf kecil, dan juga tidak ada kata kunci Else. sehingga harus adanya perbaikan seperti di gambar langkah 2

**Langkah 3**
Terjadi eror yang disebabkan oleh 
 * Deklarasi variabel test dua kali: adanya percobaan mendeklarasikan ulang variabel test dengan tipe data String, padahal variabel test sudah dideklarasikan sebelumnya sebagai String. Ini menyebabkan error karena tidak bisa mendeklarasikan ulang variabel dengan nama yang sama di dalam scope yang sama.

Kesalahan tipe data dalam kondisi if: adanya penetapan nilai "true" (sebagai string) ke variabel test dan kemudian mencoba memeriksa kondisi if (test). Ini tidak valid karena Dart mengharapkan nilai boolean (true atau false), bukan string.

**Praktikum 2**

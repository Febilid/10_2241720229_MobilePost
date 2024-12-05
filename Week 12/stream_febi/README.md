# hello im Farrel

Stream.

## Praktikum 1

### soal 2
![Screenshot hello_world](Images/soal%202.png)

### soal 3
#### Jelaskan fungsi keyword yield* pada kode tersebut!
#### yield* digunakan dalam konteks generator function untuk menghubungkan (delegate) stream lain ke dalam stream yang sedang dibuat.
![Screenshot hello_world](Images/soal%203.png)

### soal 4
![Screenshot hello_world](Images/soal%204.png)

### soal 5


Jawab : Listen digunakan untuk stream sedangkan await digunakan untuk future. Lalu Listen mendengarkan data secara terus menerus sedangkan await menunggu hasil dari operasi asinkron. Listen secara eksekusi yaitu kode tetap berjalan saat menunggu data baru sedangkan await kode tertahan sampai hasil tersedia. Dalam callback listen menggunakan callback untuk setiap nilai baru sedangkan await mengembalikan nilai setelah selesai.

Hasilnya setelah di running sama saja seperti sebelumnya hanya berbeda dalam penggunaan listen dan await saja.


## Praktikum 2
### soal 6
#### jadi pada code ini singkatnya kita membuat code yang di mana untuk melakukan ketika menekan tombol maka akan melakukan perhitungana acak code yang melakukan perhitungan acak itu ialah dari langkah 10

![Screenshot hello_world](Images/soal%206.png)

### soal 7
#### jawaban soal 7 adalah
##### Langkah 13 hingga 15 bertujuan untuk meningkatkan penanganan kesalahan dalam stream. Pada langkah 13, kode addError('error'); ditambahkan untuk mengirimkan sinyal kesalahan ke sink dari StreamController, yang memungkinkan aliran data untuk menginformasikan bahwa terjadi kesalahan. Langkah 14 melibatkan penambahan metode onError dalam listen pada stream di initState(), di mana ketika kesalahan terjadi, fungsi ini mengubah state lastNumber menjadi -1 untuk menunjukkan adanya masalah. Langkah 15 memperbarui metode addRandomNumber() dengan mengomentari baris yang menghasilkan angka acak dan menambahkan numberStream.addError('error');, yang mensimulasikan kesalahan untuk menguji respons aplikasi terhadap kondisi tersebut.

## Praktikum 3
### soal 8
#### jawaban soal 8 adalah Langkah 1 bertujuan untuk mendeklarasikan StreamTransformer, yang memungkinkan transformasi data secara efisien saat diterima dari stream. Langkah 2 berfungsi untuk mendefinisikan bagaimana data dan kesalahan akan ditangani melalui transformer, sehingga memberikan pengendalian yang lebih baik atas aliran data. Langkah 3 memastikan bahwa transformer diterapkan pada stream, memungkinkan listener untuk memonitor dan memperbarui state aplikasi berdasarkan data yang telah diproses.

![Screenshot hello_world](Images/soal%207.png)

## Praktikum 4
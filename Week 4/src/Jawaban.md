**Praktikum 1**

**Langkah 1&2**
Program ini memanipulasi list, melakukan pemeriksaan (assertions), dan mencetak hasilnya. Jika semua assertions benar, program akan berjalan dengan baik.

**Praktikum 2**

**Langkah 1&2**
Program ini menunjukkan penggunaan set di Dart untuk menyimpan dan mencetak nama-nama halogen.

**Praktikum 3**

**Langkah 1&2**
Program ini menunjukkan cara mendeklarasikan dan menggunakan map di Dart untuk menyimpan dan mengelola pasangan kunci-nilai. gifts berisi informasi tentang hadiah, sementara nobleGases berisi informasi tentang gas mulia berdasarkan nomor atom mereka.

**Praktikum 4**

**Langkah 1&2**
Kode Dart yang DIberikan mengalami error karena ada kesalahan penamaan variabel.

**Langkah 3**
Kode ini berhasil menambahkan elemen dengan menggunakan spread operator di Dart, dan mengelola list dengan elemen null dengan aman

**Collection For** dalam Dart memiliki beberapa manfaat:
1. Simplicity: Memudahkan pembuatan koleksi baru dengan sintaks yang ringkas dan mudah dibaca.
2. Fleksibilitas: Dapat memanipulasi elemen dari koleksi yang ada secara dinamis saat membuat koleksi baru.
3. Kondisi: Memungkinkan penggunaan kondisi untuk menyaring elemen yang akan dimasukkan ke dalam koleksi.
4. Produktivitas: Mengurangi jumlah kode yang perlu ditulis, sehingga mempercepat proses pengembangan.
5. Dukungan Berbagai Koleksi: Dapat digunakan untuk membuat List, Set, atau Map.

**Praktikum 5**

**Langkah 1**
kode ini membuat sebuah tuple yang menyimpan beberapa nilai berbeda (string, integer, boolean) dalam satu variabel. Tuple ini memudahkan pengelompokan data dan dapat diakses dengan mudah. Kode ini mencetak isi tuple ke konsol.

**Langkah 3**
Tidak eror namun hasil tidak ditampilkan

**Tugas**
1. Dalam bahasa Dart, Functions adalah blok kode yang dapat dieksekusi ketika dipanggil. Fungsi memungkinkan pengorganisasian kode yang lebih baik, mengurangi pengulangan, dan meningkatkan keterbacaan.
2. Ada beberapa jenis parameter dalam fungsi:

Positional Parameters: Parameter yang diharapkan berada dalam urutan tertentu. Contoh:

dart
void greet(String name, int age) {
  print('Hello, $name. You are $age years old.');
}
Named Parameters: Parameter yang disebutkan dengan nama, memungkinkan pemanggilan dalam urutan yang tidak ditentukan. Contoh:

dart
void greet({required String name, required int age}) {
  print('Hello, $name. You are $age years old.');
}
Optional Parameters: Parameter yang tidak wajib, dapat ditandai dengan tanda kurung kotak. Contoh:

dart
void greet(String name, [int? age]) {
  print('Hello, $name. You are ${age ?? 'unknown'} years old.');
}

3. Fungsi sebagai first-class objects berarti fungsi dapat diperlakukan sebagai nilai, yang dapat disimpan dalam variabel, dikirim sebagai argumen, dan dikembalikan dari fungsi lain. Contoh:

dart
void Function() sayHello = () {
  print('Hello!');
};
sayHello(); // Memanggil fungsi

4. Anonymous Functions adalah fungsi yang tidak memiliki nama, sering digunakan sebagai argumen untuk fungsi lain. Contoh:

dart
var list = [1, 2, 3];
list.forEach((item) {
  print(item); // Anonymous function
});

5. Perbedaan antara Lexical scope dan Lexical closures:

Lexical scope menentukan area di mana variabel dapat diakses, bergantung pada lokasi deklarasi variabel dalam kode.
Lexical closures adalah kemampuan fungsi untuk mengingat dan mengakses variabel di luar scope-nya, meskipun fungsi tersebut dipanggil di luar scope tersebut. Contoh:

dart
Function makeCounter() {
  int count = 0; // Variabel dalam lexical scope
  return () {
    count++; // Mengakses variabel dari lexical scope
    return count;
  };
}
var counter = makeCounter();
print(counter()); // 1
print(counter()); // 2

6. Untuk mengembalikan beberapa nilai dari fungsi, Dart menggunakan tuple atau objek. Contoh menggunakan tuple:

dart
(int, int) calculateSumAndDifference(int a, int b) {
  return (a + b, a - b);
}
void main() {
  var result = calculateSumAndDifference(10, 5);
  print('Sum: ${result.$1}, Difference: ${result.$2}');
}
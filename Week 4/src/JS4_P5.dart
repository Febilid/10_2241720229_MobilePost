// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// void main() {
//   var record1 = ('first', a: 2, b: true, 'last');
//   print('Record: $record1');

//   var record2 = (2, 5);
//   print('Record sebelum ditukar: $record2');
  
//   var newRecord = tukar(record2);
//   print('Record setelah ditukar: $newRecord');
  
//   (String, int) mahasiswa;
//   mahasiswa = ('Febiola Lidya Sianturi', 2241720229);
//   print(mahasiswa);
// }

void main() {
  var mahasiswa2 = ('Febiola Lidya Sianturi', a: 2241720229, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Febiola Lidya Sianturi'
  print(mahasiswa2.a); // Prints 2241720229
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

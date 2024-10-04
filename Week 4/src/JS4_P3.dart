void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var mhs1 = Map<String, String>();
  mhs1['name'] = 'FEBIOLA LIDYA SIANTURI';
  mhs1['NIM'] = '2241720229';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'FEBIOLA LIDYA SIANTURI';
  mhs2[2] = '2241720229';

  gifts['name'] = 'FEBIOLA LIDYA SIANTURI';
  gifts['NIM'] = '2241720229';

  // Menambahkan elemen ke map nobleGases
  nobleGases[19] = 'Xenon';

  print('Gifts: $gifts');
  print('Noble Gases: $nobleGases');
  print('Mahasiswa 1: $mhs1');
  print('Mahasiswa 2: $mhs2');
}

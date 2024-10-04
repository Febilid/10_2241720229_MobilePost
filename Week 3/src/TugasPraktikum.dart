void main() {
  for (int num = 0; num <= 201; num++) {
    if (isPrime(num)) {
      print('$num adalah bilangan prima.');
      print('Nama lengkap: FEBIOLA LIDYA SIANTURI');
      print('NIM: 2241720229');
      print('------------------------------');
    }
  }
}

bool isPrime(int num) {
  if (num < 2) return false; // 0 dan 1 bukan bilangan prima
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false; // Jika ada faktor selain 1 dan dirinya sendiri
    }
  }
  return true; // Jika tidak ada faktor lain, maka prima
}

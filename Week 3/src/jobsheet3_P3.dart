void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break; // Keluar dari loop jika index sama dengan 21
    } else if (index > 1 || index < 7) {
      continue; // Lanjutkan ke iterasi berikutnya jika kondisi terpenuhi
    }
    print(index); // Cetak nilai index
  }
}

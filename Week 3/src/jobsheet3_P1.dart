void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  // Perbaikan untuk deklarasi variabel dan tipe data
  bool testBoolean = true;
  if (testBoolean) {
    print("Kebenaran");
  }
}

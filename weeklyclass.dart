import 'dart:io';

main() {
  int umur = 18;
  double doubleVaribel = 1;

  String nama = "Azam Mukhtar";
  String singleQuoteString = 'String dengan satu quote. \ni\'m';
  String doubleQuoteString = "String dengan dua quote. \ni'm";
  String rawString = r'String dengan dua quote.\n i am';

  String stringVariabel = "Nama saya adalah: $nama \nUmur : $umur ";

  int angka1 = 3;
  double angka2 = 8;
  String angka3 = "20.5";

  double total = angka1 + angka2 + double.parse(angka3);
  var pengurangan = angka2 % angka1;

  bool menyala = false;

  var angka = 20;
  var namaVar = "Azam";

  const nomor_ktp = 19882304508594;

  // nomor_ktp = 12321321;

  // dynamicVariabelExample();
  swictCaseExample();
}

/// Ini adalah fungsi input output pada dart
void inputOutputExample() {
  stdout.writeln("Input nama anda : "); //seperti print()
  String name = stdin.readLineSync();
  stdout.writeln("Namaku $name");
}

/// Documentaion
// Comment

/* 
Block of comment
*/

void dynamicVariabelExample() {
  dynamic varibelDinamis = 10;
  print(varibelDinamis);
  varibelDinamis = "Ini variabel dinamis";
  print(varibelDinamis);
}

void operasiMatematikaExample() {
  //relational ==, !=, >=, <=

  // if (angka > 6) {
  //   print("Lebih besar");
  // } else {
  //   print("Lebih kecil");
  // }
  int angka = 5;
  var number = 1;
  //unary operator
  // print(++number);
  // print(--number);
  // print(number += 1); // number = number + 1
  // print(number -= 1); // number = number - 1

  //logical && dan, || atau
  if (angka > 3 && number == 6) {
    print("2 kondisi terpenuhi");
  } else {
    print("kondisi tidak terpenuhi");
  }

  if (angka == 3 || number == 6) {
    print("Salah satu kondisi terpenuhi");
  } else {
    print("tidak ada kondisi yang terpenuhi");
  }
}

class Nomor {
  int angka;
}

void nullSafetyExample() {
  var angka;
  var nomor = Nomor();

  // print(nomor?.angka ?? 5);

  int numberNull;
  // print(numberNull ?? 100);
  print(numberNull ??= 100);
  print(numberNull);
}

void ternaryOperator() {
  int x = 100;
  var result = x % 2 == 0 ? 'Genap' : 'Ganjil';

  var resultLain = x / 50 == 2 ? 'Seratus' : 'Bukan seratus';

  if (x % 2 == 0) {
    result = "Genap";
  } else if (x / 50 == 2) {
    result = "Seratus";
  } else {
    result = "Bukan seratus";
  }

  print(result);
  // print(resultLain);
}

void swictCaseExample() {
  int errorType = 403;
  switch (errorType) {
    case 404:
      print("Page not found");
      break;
    case 405:
      print("Page not available");
      break;
    case 403:
      print("Page is missing");
      break;
    default:
      print("Gak tau pagenya kemana");
  }
}

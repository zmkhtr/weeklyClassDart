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
  // listSetMap();

  // showOutput(sumNamedOptNoNegasi(1, 2));

  // var orang1 = Orang("Burhan", "Laki-Laki");
  // orang1.showOutput();
  // var orang2 = Orang("Keke", "Perempuan");
  // orang2.showOutput();
  // var orang3 = Orang.orangAsing();
  // orang3.showOutput();
  harusLebihDariNol(5);
}



int harusLebihDariNol(int val) {
  if (val <= 0) {
    throw Exception("Harus lebih dari 0");
  }
  return val;
}

void verifyTheValue(var val) {
  var valueVerification;
  try {
    valueVerification = harusLebihDariNol(val);
  } catch (e) { //on ErrorType || on Exception catch(e)
    print(e);
  } finally {
    if (valueVerification == null) {
      print("Value null");
    } else {
      print("Value benar: $valueVerification");
    }
  }
}

class Orang {
  String nama;
  String jenisKelamin;
  int umur;

  // Orang(var nama, var jenisKelamin) {
  //   this.nama = nama;
  //   this.jenisKelamin = jenisKelamin;
  // }
  Orang(this.nama, this.jenisKelamin, [var umur = 18]) {
    this.umur = umur;
  }

  Orang.orangAsing() {
    this.nama = "Tidak diketahui";
    this.jenisKelamin = "Tidak tau";
    this.umur = 20;
  }

  void showOutput() {
    print(nama + "\n" + jenisKelamin + "\n" + umur.toString());
  }
}

class X {
  final name; // change can be in runtime by constructor
  //var name; // change can be in runtime by constructor

  static const int age = 10; // cannot change X.age // class property

  X(this.name);
}

xOutput() {
  var x = X("azam");
  print(x.name);

  // x.name = "Komar";//error karen final
  print(X);

  final name = "azam";
  const age = 10;
}

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year);

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;
  String hargaRupiah;

  Car(String model, int year, this.price) : super(model, year);

  set harga(String value) {
    hargaRupiah = "Rp $value";
  }

  String get harga {
    return hargaRupiah;
  }

  // num get right => left + width;
  // set right(num value) => left = value - width;

  @override
  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

creatObject() {
  var car = Car("Toyota", 2012, 150000);
  
  car.harga = "30000";
  print(car.harga);
}

class Rectangle {
  num left, top, width, height;
  //num int or double

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

rectOutput() {
  var rect = Rectangle(2, 10, 12, 33);
  print(rect.left);
  rect.right = 8;
  print(rect.left);
}

dynamic square(var num) {
  return num * num;
}

void showOutput(var msg) {
  print(msg);
}

//named parameter [optional tanpa dinegasiin]
dynamic sumNamedOptNoNegasi(var num1, [var num2 = 0]) => num1 + num2;
dynamic sumNamedOptNoNegasiNot(var num1, [var num2]) => num1 + (num2 ?? 0);

// => fat arrow / arrow function
dynamic arrowFunctionSquare(var num) => num * num;

//positional argument
dynamic sum(var num1, var num2) => num1 + num2;
//named parameter {harus dinegasiin tapi optional}
dynamic sumNamed({var angka1, var num2}) => angka1 + num2;
//default -> optional
dynamic sumNamedOpt(var num1, {var num2}) => num1 + (num2 ?? 10);
dynamic sumNamedOptExist(var num1, {var num2 = 10}) => num1 + num2;

void listSetMap() {
  //List = Array
  List<String> names = ['donal', 'Macdonal'];
  // List<String> names;
  var namesCopy = [...names];
  // namesCopy.add(23);
  // // names[0] = "nurdin";

  for (var name in namesCopy) {
    print(name);
  }
  // List names = const ['donal', 'Macdonal'];

  // List names = ['donal', 'Macdonal', 10, 100.1];
  // List <String> names = ['donal', 'Macdonal', 10, 100.1];

  // var namesLain = names; //gak copy - cuma akses list yg sama

  // var namesLain = [...names]; // ini baru copy jd list baru

  // print(names[0]);

  // var namaNama = {'abdul', 'maya', 'abdul'}; //gabisa ada value sama

  // print(namaNama.last);
  // var namaNamaSet = {}; //gabisa empty set kyk gini malah di angap linkedhashmap
  // var namaNamaSetBisa = <String>{};
  // var setNama = <String>{'abdul', 'maya', 'abdul'};
  // Set<String> namesOther = {};

  // for (var nama in namaNama) {
  //   print(nama);
  // }

  //map
  var hadiah = {
    //key    //value
    'first': 'iphone1',
    'key2': 'Mobil',
    'sad': 'Rumah'
  };
  // print(hadiah['key2']);

  var giftInt = {
    //key bisa int   //value
    2: 'iphone1',
    1: 'iphone12',
    7: 'iphone13'
  };
  // print(giftInt[7]);

  // print(gifst[1]);

  // var map = {};
  // var map = {"key1": "value1", "key2": "value2"};
  // map["key3"] = "value3";
  // print(map["key3"]);
  // Map maps;
  // maps[1] = '123';
  // var giftMap = Map();
  // giftMap['key'] = 'iphone';

  // print(giftMap['key']);
}

void breakAndContinue() {
  for (var i = 1; i <= 10; i++) {
    if (i > 5) break;
    // print(i);
  }

  for (var i = 1; i < 10; i++) {
    if (i % 2 == 0) continue;
    print(i);
  }
}

void whileLoop() {
  int num = 5;
  while (num > 0) {
    print(num);
    num -= 1;
  }

  do {
    print(num);
    num -= 1;
  } while (num > 0);
}

// void typeCheck() {
//   double x = 2;
//   if (x is int) {
//     print("Varibel x adalah integer");
//   }
// }

void forLoopingExample() {
  for (var i = 1; i > 8; i++) {
    print(i);
  }
  var listAngka = [1, 3, 4, 5, 6, 7];
  // for (var angka in listAngka) {
  //   print(angka);
  // }

  // for (var i = 0; i < listAngka.length; i++) {
  //   print(listAngka[i]);
  // }

  listAngka.forEach((element) {
    print(element);
  });
  listAngka.forEach(keluaranListAngka);
}

void keluaranListAngka(var element) {
  print(element);
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

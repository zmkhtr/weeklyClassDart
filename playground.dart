import 'dart:io';

void main() {
  print("Hello World");
  var firstName = 'Azam';
  String lastName = 'Mukhtar';

  var double = 1.2;
  int a = 1;

  lastName = "Abdul";

  // print(firstName + ' ' + lastName);

  // listSetMap();

  breakAndContinue();
  // print(sumNamed(num1: 1, num2: 2));
}

inputOutput() {
  stdout.writeln("Input your name : ");
  String name = stdin.readLineSync();
  print('Namaku $name');
}

/// Documentaion
// Comment

/* 
Block of comment
*/

//dynamic

dynamicVariabel() {
  dynamic weakVar = "string";
  print(weakVar);

  weakVar = 123;
  print(weakVar);

  weakVar = null;
  print(weakVar);
}

string() {
  var s1 = 'Single quote\'';
  var s2 = "Double quote's";

  //RAW String
  var s = r'Ini raw string, \n spesial karakter.';

  var multipleLine = '''
Ini bisa lebih dari satu baris
multi0line string''';
  var multipleLineDouble = """≈
Ini bisa lebih dari satu baris
multi-line string""";

  var sNewLine2 = "Double quote's \n newline nih";
  print(multipleLineDouble);
}

typeConversion() {
  var one = int.parse('2');
  assert(one == 1);

  var satuKomaSatu = double.parse('1.1');
  assert(satuKomaSatu == 1.1);
}

constant() {
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = "String";

  print(aConstNum.runtimeType);
}

operatorMatematika() {
  // + - * / %
  int num = 10 + 20;
  num = num - 2;

  print(num);

  //relational ==, !=, >=, <=
  if (num == 0) {
    print("Zero");
  }

  num = 100;
  num += 2; //num = num + 2;

  //unary operator
  ++num;
  num--;
  num += 1;
  num -= 1;
  print(num);

  //logical && dan, || atau
  if (num > 200 && num < 203) {
    print('200 to 202');
  }

  //!= Not Equal
  if (num != 100) {
    print("num is not equal to 100");
  }
}

nullSafety() {
  var n = Num();
  int number;

  number = n.num;

  // if (n != null) {
  //   number = n.num;
  // }
  number = n?.num;
  number = n?.num ?? 0;

  int numberNull;
  print(numberNull ?? 100);
  // print(numberNull ??= 100);
  print(numberNull);

  print(number);
}

class Num {
  int num = 10;
}

ternaryOperator() {
  int x = 100;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);
}

typeTest() {
  var x = 100;
  if (x is int) {
    print("integer");
  }
}

ifElse() {
  int number = 100;

  if (number % 2 == 0) {
    print('even');
  } else if (number % 3 == 0) {
    print('odd');
  } else {
    print('Confused');
  }
}

switchCase() {
  int number = 0;
  switch (number) {
    case 0:
      print('Even');
      break;
    case 1:
      print('Odd');
      break;
    default:
      print('Confused');
  }
}

// int i, x;

// i = 2;
// x = ++i;
// // now i = 3, x = 3

// i = 2;
// x = i++;

forLooping() {
  //for loop
  for (var i = 1; i <= 10; i++) {
    // print(i);
  }

  var numbers = [1, 2, 3, 4, 5, 6];

  //for in loop
  for (var i in numbers) {
    //   print(i);
  }

  //using standar
  for (var i = 0; i < numbers.length; ++i) {
    // print(numbers[i]);
  }

  //for each loop
  // numbers.forEach((n) {
  //   print(n);
  // });

  // numbers.forEach((element) => print(element));

  numbers.forEach(printNum);
}

void printNum(num) {
  print(num);
}

whileLoop() {
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

breakAndContinue() {
  for (var i = 1; i <= 10; i++) {
    if (i > 6) break;
    print(i);
  }

  for (var i = 1; i < 10; i++) {
    if (i % 2 == 0) continue;
    // print(i);
  }
}

//Collection
listSetMap() {
  //List = Array
  List names = ['donal', 'Macdonal'];
  // var names = ['donal', 'Macdonal'];
  // names.length;

  // List names = const ['donal', 'Macdonal'];
  // List names = ['donal', 'Macdonal', 10, 100.1];
  // List <String> names = ['donal', 'Macdonal', 10, 100.1];

  var namesLain = names; //gak copy - cuma akses list yg sama

  // var namesLain = [...names]; // ini baru copy jd list baru

  names[1] = 'Burhan';

  // print(names[0]);

  for (var name in namesLain) {
    // print(name);
  }

  //set - unique item
  var namaNama = {'abdul', 'maya', 'abdul'}; //gabisa ada value sama

  print(namaNama.last);
  var namaNamaSet = {}; //gabisa empty set kyk gini malah di angap linkedhashmap
  var namaNamaSetBisa = <String>{};
  var setNama = <String>{'abdul', 'maya', 'abdul'};
  Set<String> namesOther = {};

  for (var x in namaNama) {
    // print(x);
  }

  //map
  var gifst = {
    //key    //value
    'first': 'iphone1',
    'key2': 'iphone12',
    'sad': 'iphone13'
  };
  print(gifst['key2']);

  var giftInt = {
    //key bisa int   //value
    2: 'iphone1',
    1: 'iphone12',
    7: 'iphone13'
  };

  print(gifst[1]);

  var map = {};
  // var map = {"key1": "value1", "key2":"value2"};
  map[4] = "sdf";
  Map maps;
  maps[1] = '123';
  var giftMap = Map();
  giftMap['key'] = 'iphone';

  print(giftMap['key']);
}

//function
dynamic square(var num) {
  return num * num;
}

void showOutput(var msg) {
  print(msg);
}

// => fat arrow / arrow function
dynamic arrowFunctionSquare(var num) => num * num;

//nameless function / closure / lambda
nameless() {
  var list = ['apple', 'banana', 'oranges'];

  list.forEach(printF);
  //high order function, menggunakan fungsi lain sebagai parameter

  list.forEach((item) {
    print(item);
  });
}

void printF(item) {
  print(item);
  print(sumNamed());
  sum(1, 2);
  sumNamedOpt(1, num2: 2);
  sumNamedOptNoNegasiNot(1, 2);
}

//positional argument
dynamic sum(var num1, var num2) => num1 + num2;
//named parameter {harus dinegasiin tapi optional}
dynamic sumNamed({var num1, var num2}) => num1 + num2;
//default -> optional
dynamic sumNamedOpt(var num1, {var num2}) => num1 + (num2 ?? 0);
dynamic sumNamedOptExist(var num1, {var num2 = 0}) => num1 + num2;

//named parameter [optional tanpa dinegasiin]
dynamic sumNamedOptNoNegasi(var num1, [var num2 = 0]) => num1 + num2;
dynamic sumNamedOptNoNegasiNot(var num1, [var num2]) => num1 + (num2 ?? 0);

class Person {
  String name;
  int age;

  //construtur - method without return type
  // Person(String name, [int age = 18]) {
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name, [this.age = 18]);

  //named constructor
  Person.guest() {
    name = "Guest";
    age = 18;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

classes() {
  // Person person1 = Person(); //without construtur
  Person person1 = Person("Azam", 20);

  // person1.name = "azam";
  // person1.age = 12;
  person1.showOutput();

  var person2 = Person("Burhan", 20);
  person2.showOutput();

  var person3 = Person.guest();
  person3.showOutput();
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
  print(X.age);

  final name = "azam";
  const age = 10;
}

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

// @override
  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

creatObject() {
  var car = Car("Toyota", 2012, 150000);
  car.showOutput();
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
  rect.right = 12;
  print(rect.left);
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

void main(List<String> args) {

  // COMMENT

  // 1. Single line Comment
  /* 2. Multi line
        Comment*/
  // print("Hello World!!!!!");

  // Variable Name
  // var name = "Krishna";
  // var f_name = "A.K Singh";
  // var address = "Lucknow";
  // var $money = 100;
  // print(name);
  // print(f_name);
  // print(address);
  // print($money);


  //Bulit-in Data Type
  // int count = 100;
  // print(count);
  // print(count.runtimeType);

  // double price = 10.50;
  // print(price);
  // print(price.runtimeType);

  // String city = "Lucknow";
  // print(city);
  // print(city.runtimeType);

  // bool is_Prime = true;
  // print(is_Prime);
  // print(is_Prime.runtimeType);

  // var quantity = 100.5;
  // print(quantity);
  // print(quantity.runtimeType);

  // Operators
  // var a = 10, b = 20, c = 50, d = 3;
  // 1. Arithmetic Operatos
  // print(a + b);
  // print(c - a);
  // print(a * b);
  // print(a / d); // Fpr double
  // print(a ~/ d);  // For int
  // print(a % d);

  // 2. Increment and Decrement Operators
  // var i = 3;
  // print(i);
  // print(++i);
  // print(i); 

  // 3. Equality and Relational Operators
  // var a = 100, b = 200, c = 100;
  // print(a == b);
  // print(a != b);
  // print(a > b);
  // print(a < b);
  // print(a >= c);
  // print(a <= b);

  // 4. Logical Operators
  // var a = 100, b = 100, c = 200, d = 200;
  // print((a == c) && (c == d));
  // print((a == b) || (c == d));
  
  // 5. Type test Operators
  // var name = "Sonam", number = 10;
  // print(name is String);
  // print(number is int);
  // print(number is! int);

  // 6. Assignment Operators
  // var n = 10;
  // n += 5;
  // print(n);
  // print(n.runtimeType);


  //Conditional Expression
  // var is_login = true;
  // var user = is_login ? "Sonam" : "Guest";
  // print(user);
  // print(user.runtimeType);

  // String
  // String name = 'Krishna';
  // print(name);
  // print(name.runtimeType);

  // var name2 = "Diggi";
  // print(name2);
  // print(name2.runtimeType);

  // var s1 = 'It\'s a Language';
  // print(s1);
  // var s2 = " It's a Language ";
  // print(s2.trim());

  // var s3 = '''This 
  //       is
  //  Multiline ''';
  //  print(s3);

  // 1. Expression Inside string
  // var name = "Krishna";
  // print('${name}');
  // print('$name');
  // print('My Name is $name');
  // print('My New name is ${name.toUpperCase()}');
  // var a = 5, b = 4;
  // print('a = $a , b = $b \na + b = ${a+b}');

  // 2. Raw String
  // var s = r'In a raw string, not even \n gets special treatment.';
  // print(s);
  // print('s.length ${s.length}');
  // print(s.isEmpty);
  // print(s.isNotEmpty);
  // print(s.toLowerCase());
  // print(s.toUpperCase());
  // print(s.contains('z'));
  // print(s.padLeft(100));
  // print(s.padRight(10));
  // var str2 = "Hello&Dart&Program";
  // print(str2.split('&'));


  // LIST
  // 1. Growable List
  // List<String>lst = [];
  // lst.add("Abc");
  // lst.add("Def");
  // lst.add("Ghi");

  // print(lst);
  // print(lst[0]);
  // print(lst.runtimeType);

  // var lst1 = [1, 2, 3, 4, 5];
  // print(lst1);
  // print(lst1.runtimeType);

  // var lst2 = <double>[1.0, 2.0, 3.0, 4]; // 4 is type conversion
  // print(lst2);
  // print(lst2.runtimeType);

  // var lst3 = ["Abc", 1, 2.0];
  // print(lst3);
  // print(lst3.runtimeType);

  // 2. Insert List into Another List;
  // var women = ["A", "B", "C"];
  // var man = ["D", "E", "F"];
  // print(women);
  // print(man);
  // var people = [...women, ...man];
  // print(people);

  // var lst = [10, 100, 1000];

  // // List Properties
  // print(lst);
  // print(lst.length);
  // print(lst.isEmpty);
  // print(lst.isNotEmpty);
  // print(lst.reversed);
  // print(lst.first);
  // print(lst.last);
  // print(lst.runtimeType);

  // List Method
  // lst.remove(10);
  // print(lst);

  // lst.removeAt(0);
  // print(lst);

  // Set
  // var set = {10, 30, 20};
  // print(set);
  // print(set.runtimeType);

  // var setm = {}; // This is Empty Map not Set
  // print(setm);
  // print(setm.runtimeType);

  // var set2 = {1, 2, "Abc", 4.0};
  // print(set2);
  // print(set2.runtimeType);

  // var set3 = <String>{"A", "B", "C", "A"};
  // print(set3);
  // print(set3.runtimeType);

  // Set set4 = {"A", "B", "C", "A"};
  // print(set4);
  // print(set4.runtimeType);

  // Set<String> set5 = {"A", "B", "C", "A"};
  // print(set5);
  // print(set5.runtimeType);

  // Empty Set
  // var st6 = <int>{}; // <int> this is mandatory for empty set
  // print(st6);
  // print(st6.runtimeType);

  // var st7 = {}; // This is Map not Set
  // print(st7);
  // print(st7.runtimeType);

  // Set<String> st8 = {};
  // print(st8);
  // print(st8.runtimeType);

  // 3. Add item
  // var stt = <String>{};
  // stt.add("A");
  // stt.add("b");
  // stt.add("A");
  // print(stt);
  // print(stt.runtimeType);


  // Map
  // var address = {
  //   'Name' : 'Krishna',
  //   'City' : 'Lucknow',
  //   'State' : 'U.P'
  // };
  // print(address);
  // print(address.runtimeType);

  // var address2 = {
  //   'Name' : 'Krishna',
  //   1 : 'Lucknow',
  //   'State' : 'U.P'
  // };
  // print(address2);
  // print(address2.runtimeType);


  // var address3 = {
  //   'Name' : 'Krishna',
  //   1 : 20,
  //   'State' : 'U.P'
  // };
  // print(address3);
  // print(address3.runtimeType);

  // Map<String, String> address4 = {
  //   'Name' : 'Krishna',
  //   'City' : 'Lucknow',
  //   'State' : 'U.P'    
  // };
  // print(address4);
  // print(address4.runtimeType);
  // print(address4[6]);
  // // Map Properties
  // print(address4.length);
  // print(address4.isEmpty);
  // print(address4.isNotEmpty);
  // print(address4.keys);
  // print(address4.values);
  // print(address4.containsKey('Name'));
  // print(address4.containsValue('Rohit'));


  // Function

  // myfun(){
  //   print("Hello World");
  // }
  // myfun();

  // addfun(){
  //   int a = 5, b = 10;
  //   return a+b;
  // }
  // var tot= addfun();
  // print(tot);

  //1.Function with Parameter
  //1.1 Positional Parameter
  // addf(a, b){
  //   return (a+b);
  // }

  // var sum = addf(10, 20);
  // print(sum);
  // var ssum = addf(11.5, 20);
  // print(ssum);


  //1.2. Optional Positional Parameters
  // String introfun(String name, [String city = 'Lucknow']){
  //   return "I am $name from $city";
  // }
  // var info = introfun('Sonam');
  // print(info);

  //1.3. Named Parameter
  // addfun({a, b}){
  //   print(a);
  //   print(b);
  // }

  // addfun(b:10, a : 'Krishna');

  // addfun(x, {a, b}){
  //   print(x);
  //   print(a);
  //   print(b);
  // }

  // addfun(10.0, b:10, a : 'Krishna');

  // Anonymous Function
  // var student = [10, 20, 30];
  // student.forEach(
  //   (element) {
  //   print(element);
  //   }
  // );

  // Arrow Function
  // var student = [10, 20, 30];
  // student.forEach((element) => print(element));

}
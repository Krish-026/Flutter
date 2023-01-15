void main(List<String> args){
  // fun();
  // fun2();
  fun3();
}

fun3(){
  // List<String> lst = ["FoodName | FoodPrice", ""];
    List<String> strList = ["Pasta | 40.5", "Pizza | 700", "Macroni | 67.5"];
    // List<String> ans = [];
    strList.map((e) {
      List<String> foodItem = e.split(" | ");
      // ans.add("${foodItem[0]} is of ${foodItem[1]}, and discounted amount is ${double.parse(foodItem[1]) * 0.8}");
      print("${foodItem[0]} is of ${foodItem[1]}, and discounted amount is ${double.parse(foodItem[1]) * 0.8}");
    }).toList();
  // print(ans);
}

fun2(){
  List<String> lst = ["Cake", 'Pastry', 'Ab', 'Cd'];
  print(lst);
  lst.add("AA");
  lst.sort();
  lst.removeWhere((element) => (element == "Cake"));

  // Anonymous Function
  lst.removeWhere((element) {
    return (element == "Cake");
  });
  // print(lst);

  lst.forEach((element) { 
    print(element);
  });

  List<String> updatedlst = lst.map((e) => e + " Food Item").toList();
  print(updatedlst);
  List<int> lengthlst = lst.map((e)=> e.length).toList();
  print(lengthlst);

  // High Order Functions = 

  // Low Order Functions = 
}

fun(){
  String input = "Panner Butter Masala | 300.5 ";
  String name = "", price = "";
  int i = 0;
  for( ; i < input.length; ++i){
    if(input[i] == '|'){
      break;
    }
    name += input[i];
  }
  while(++i < input.length){
    price += input[i];
  }

  print('${name.trim()} cost is ${price.trim()}');
}
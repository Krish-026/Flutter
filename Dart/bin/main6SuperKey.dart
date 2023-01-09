// Super Keyword
void main(){
  var obj = new Son();
  obj.disp();
}

// Super Class
class Father{
  int money = 1000;
  disp(){
    print("I am Super Class");
  }
  disp1(name, city){
    print("Name = $name and City = $city");
  }
}

// Sub Class
class Son extends Father{
  int money = 3000;
  @override  // Means We will not use Parent variable
  disp(){
    print("I am Sub Class");
    print("Money $money");
    // For Father money use Super Keyword just for above Class
    print("Father Money ${super.money}");
    super.disp();
  }
@override // Same function name and same fun Parameter
  disp1(a, b){
    print("A = $a and B = $b");
  }
}


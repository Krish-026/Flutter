// Overriding
void main(){
  var obj = new Son();
  obj.disp();
  obj.disp1(5,10);
}

// Super Class
class Father{
  disp(){
    print("I am Super Class");
  }
  disp1(name, city){
    print("Name = $name and City = $city");
  }
}

// Sub Class
class Son extends Father{
  @override  // Means We will not use Parent variable
  disp(){
    print("I am Sub Class");
  }
@override // Same function name and same fun Parameter
  disp1(a, b){
    print("A = $a and B = $b");
  }
}


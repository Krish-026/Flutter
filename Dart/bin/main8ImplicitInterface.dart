// Implicit Interface  // Means implement multiple Inheritance indirectly . NOT possible directly in dart

// class Class_name implements Interface_name


// void main(){
//   var obj = new Daughter();
//   obj.disp();
// }

// class Father{
//   disp(){
//     print("I am Father Class");
//   }
// }

// class Daughter implements Father{
//   disp(){
//     print("I am Daughter Class");
//   }
// }



void main(){
  var obj = new Daughter();
  obj.disp();
  obj.disp1();
}

class Mother{
  disp1(){
    print("I am Mother Class");
  }
}

class Father{
  disp(){
    print("I am Father Class");
  }
}

class Daughter implements Father, Mother{
  disp(){
    print("I am Father Daughter Class");
  }
  @override
  disp1() {
    print("I am Mother Daughter Class");
  }
}
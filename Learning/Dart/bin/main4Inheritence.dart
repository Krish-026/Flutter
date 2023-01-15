// Inheritance


// Single Inheritance
// Parent Class => Super Class
// Child Class => Sub Class

// void main(){
//   var obj_Son = Son();
//   obj_Son.getValue(10);
//   obj_Son.disp();
// }

// Parent Class/ Super Class
// class Father{
//   int? money;
//   getValue(m){
//     money = m;
//   }
// }

// class Son extends Father{
//   String car = "Dastun 10";
//   disp(){
//     print("Car $car");
//     print("Money $money");
//   }
// }



// Multilevel Inheritance

// void main(){
//   var obj_G_Son = new GrandSon();
//   obj_G_Son.getValue(1000);
//   obj_G_Son.disp();
// }

// class Father{
//   int? money;
//   Father(){
//     money = 0;
//   }
//   getValue(m){
//     money = m;
//   }
// }

// class Son extends Father{
//   String car = "Dastun 10";
//   int bank_balance = 5000;
//   totalMoney(){
//     return (money! + bank_balance);
//   }
// }

// // GrandChild Class 
// class GrandSon extends Son{
//   String bike = "Hero";
//   disp(){
//     print("Bike $bike");
//     print("Car $car");
//     print("Money ${totalMoney()}");
//   }
// }


//Hierarchial Inheritance
void main(){
  var obj_Son = Son();
  obj_Son.getValue(1000);
  obj_Son.disp();

  var obj_daughter = Daughter();
  obj_daughter.getValue(2000);
  obj_daughter.disp();
}

class Father{
  int? money;
  getValue(m){
    money = m;
  }
}

class Son extends Father{
  String car = "Dastun";
  disp(){
    print("Son");
    print("Car $car");
    print("Money $money");
  }
}

class Daughter extends Father{
  String bike = "Dastun";
  disp(){
    print("Daughter");
    print("Bike $bike");
    print("Money $money");
  }
}
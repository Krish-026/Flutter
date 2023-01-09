// Class and Object
/*
class class_Name{
  class Member
}
*/

void main(){

  //Creating an Object;
  var Samsung = Mobile(); // new is Optional
  
  // Calling an Instance Method using Object
  Samsung.showModel("Samsung 100");

  // Using Instance Variable using Object
  print("Ram $Samsung.ram");

  var LG = new Mobile();
  LG.showModel("LG 300");
  print("Ram $LG.ram");


  // Static Variable
  //lg.memory; Not accessible
  // Use Class_name
  print("Memory ${Mobile.memory}");

  // Calling Static Method using Class Name
  print("Extra Memory ${Mobile.addExtraMemory(8)}");
}

class Mobile{
  // Instance Variable
  late String model;
  int ram = 4;
  Mobile(){
    model = "";
  }
  // Instance Method
  showModel(String md){
    model = md;
    print(model);
  }

  // Static Variable
  static int memory = 12;
  // Static Method
  static addExtraMemory(int extra){
    memory += extra;
    return memory;
  }
}


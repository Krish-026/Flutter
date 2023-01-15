// Constructor
/*
Class_name(parameter){
  Constructor Body
} */
void main(){
  // Creating an Object
  var obj = new Mobile("Realme X", 4);
  obj.show();

  obj = new Mobile.constructorName(5);
}


class Mobile{

  // Instance Variable
  String? model;
  int? ram;

  // Constructor
  // Mobile(m, r){
  //   this.model = m;
  //   this.ram = r;
  // }

  Mobile(this.model, this.ram);

  // Instance Method
  show(){
    print("Model $model");
    print("Ram $ram");
  }

  // Named Constructor
  Mobile.constructorName(int n){
    print("Named Constructor $n");
  }  


}
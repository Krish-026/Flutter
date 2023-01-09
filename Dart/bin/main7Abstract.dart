// Abstract Class and Abstract Method
void main(){
  var obj = new Student();
  obj.updateStudent();
}

abstract class Teacher{
  // Define Constructor
  // Variable
  // Methods
  updateStudent();// Abstract Method
}

class Student extends Teacher{
  // Defining Abstract Method
  @override
  updateStudent() {
    print("I will follow official Doc");
  }
}
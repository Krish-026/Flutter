// Exception Handling
void main(){
  int? result;

  // try catch
  // try{
  //   result = 4 ~/ 0;
  //   print(result);
  // } catch(e){
  //   print(e);
  // }


  // try on catch
  try{
    result = 4 ~/ 0;
    print(result);
  } catch(e){
    print(e);
  } finally{
    print('Finally Always Executes');
  }
}


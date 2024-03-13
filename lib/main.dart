import 'dart:io';
import 'package:dart_project/common.dart';
import 'package:dart_project/dart_practice/ascync_prog/asyncprog.dart';
import 'dart_practice/dart_exceptionhendeling/exception_prac.dart';






void execute(){
  print('Enter start program number from above:( 1  means variable)\n');
  int? startprogram = int.tryParse(stdin.readLineSync()!);
  switch(startprogram){
    case 11:
      exStarting();
    case 12:
      ascyncStarting();
    default:
      print('This Topic is not added yet!');
  }
}


void controller(){
  startUp();
  bool flug =true;
  CustomException keyNotFoundException = CustomException(name: 'Invalid Key.Please enter proper key');
  while(flug){
    try {
      execute();
      print("Do you want to execute. yes(y) or No (n):\n");
      String decision = stdin.readLineSync()!.toLowerCase();
      if (decision == 'y') {
        flug = true;
      } else if( decision == 'n'){
        flug = false;
      }else{
        throw keyNotFoundException;
      }
    }
    catch(e){
       keyNotFoundException.message();
    }

  }
}

void startUp(){
  print('''
        ---------------------------------------------------------------------------------                                             
       |                                                                                 |
       |                     Welcome To Dart Practice project.                           |
       |                                                                                 |
        ---------------------------------------------------------------------------------
       |  *Enter any of them topics: (ex:  1  - means 'variable')                                      |
       |                                                                                 |
       |  1. Data Types and Variables                7. Inheritance                      |       
       |  2. Control statements- conditions          8. Encapsulation                    |
       |  3. Control statements- loops               9. abstraction & abstract           |
       |  4. Functions                               10. Interface & implementations     |
       |  5. OOP ( Class & object)                   11. Exception Handling              |             
       |  6.Methode & properties                     12. Ascync Programing               |                   
       |                                                                                 |   
        ---------------------------------------------------------------------------------                                                     
  ''');

}

void main(){


  controller();

}





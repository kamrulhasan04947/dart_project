

import 'dart:io';

import 'package:dart_project/common.dart';
import 'package:dart_project/dart_practice/ascync_prog/asyncprog.dart';

import 'dart_practice/dart_exceptionhendeling/exception_prac.dart';




void check( bool flug){
  CustomException keyNotFoundException = CustomException(name: "Entered key not found . Please Enter correct key");
  try{
    print("Do you want to execute another one: yes(type y) , No (type) n:\n");
    String decision = stdin.readLineSync()!.toLowerCase();
    if(decision == 'n'){
      flug = false;
    } else if (decision == 'y'){
      flug = true;
    }else{
      throw keyNotFoundException;
    }
  }catch (e){
    keyNotFoundException.message();
  }
}

void execute(){
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

void main(){

  bool flug =true;

  while(flug){
    execute();
    check(flug);
  }


}





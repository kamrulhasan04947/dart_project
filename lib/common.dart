class CustomException implements Exception{
  String name;
  CustomException({required this.name});

  void message(){
    print(name);
  }
}
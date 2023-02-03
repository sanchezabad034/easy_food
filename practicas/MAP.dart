void main(){

  // Map persona = {
  //   'nombre': 'Fued', 
  //   'edad': 29, 
  //   'soltero': false, 
  //   true: false, 
  //   1:100, 
  //   2:500
  // };

  // print(persona);

  Map<dynamic, dynamic> persona2 = {
    'nombre': 'Fued', 
    'edad': 29,
    'soltero': false,
    1:100,
  };

  persona2.addAll({'segundoNombre': 'Juan'});

  print(persona2);
}
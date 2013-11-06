[Práctica 8 de LPP](http://campusvirtual.ull.es/1314/mod/assign/view.php?id=95620)
=================

Alumnos:
  - [José Alexander Delgado Hernández](http://campusvirtual.ull.es/1314/user/view.php?id=5990&course=1102) ([alu0100596403@ull.edu.es](mailto:alu0100596403@ull.edu.es))
  - [Sem Ramos Herrera](http://campusvirtual.ull.es/1314/user/view.php?id=2455&course=1102) ([alu0100603194@ull.edu.es](mailto:alu0100603194@ull.edu.es))

=================

### Guión de la Práctica ###

Considere el desarrollo de una clase Ruby para representar Matrices. 
 - 1.-) Cree una clase para representar Matrices usando desarrollo dirigido por pruebas (Test Driven Development - TDD) con la herramienta Rspec. 
 - 2.-) Se ha es seguir la metodología de Integración continua (Continuos Integration) usando la herramienta Travis. 
 - 3.-) Además se ha de comprobar el funcionamiento de la aplicación con la herramienta Guard de comprobación continua (Continuous testing) de manera que permita la ejecución de las pruebas definidas con rspec cuando se modifiquen. Puede ver un ejemplo en: git @ github.com:coromoto/CT-Point.git
 - 4.-) Indique la URL (HTTP) del repositorio que ha desarrollado.

=================

Para el desarrollo de esta práctica hemos usado las herramientas usadas en las prácticas anteriores (Rspec y Travis) para desarrollar una clase que represente Matrices.
Comenzamos creando espectativas, en spec_Matrices.rb, de las funciones que luego implementariamos en Matrices.rb.
 
Hemos empleado los siguientes métodos:
- Metodo initilize de la clase
- Getter de nfil y ncol
- Metodo para convertir la matriz a string.
- Metodo para sumar dos matrices. Sobrecarga del operador "+" para que pueda realizar la suma de matrices.
- Metodo para restar dos matrices. Sobrecarga del operador "-" para que pueda realizar la resta de matrices.
- Metodo para multiplicacion dos matrices. Se crea la funcion "por", que multiplica la matriz implícita con la que recibe como parámetro.
- Metodo para multiplicar una matriz por un escalar. Sobrecarga del operador "*" para que pueda realizar la multiplicación de una matriz por un escalar.
- Metodo para hallar la traspuesta de una matriz. 
- Metodo para convertir la matriz en un vector. Permite convertir una matriz, en un vector.

=================


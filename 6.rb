# Crear una clase Student con un método constructor que recibirá 3 argumentos (nombre, nota1 y nota2).
# Cada una de las notas tendrá, por defecto, valor 4 en el caso que no se ingrese una nota al momento de crear una nueva instancia.

# La clase también debe tener una variable de clase llamada quantity la que será iniciada en 0
# y se incrementará en 1 cada vez que se instancie un nuevo objeto.

# Crear un módulo Test con un método result.
# Este método debe calcular el promedio de 2 notas y si ese promedio es superior a 4 entregrar un mensaje que debe decir "Estudiante aprobado".
# En caso contrario, enviará un mensaje "Estudiante reprobado".

# Crear un segundo módulo Attendance con un método student_quantity que permita mostrar en pantalla la cantidad de estudiantes creados.


module Test
  def result
    ( (@nota1 + @nota2) / 2.0 >= 4 ) ? "Estudiante aprobado" : "Estudiante reprobado"
  end
end

# Añadir Test como métodos de instancia
# y el módulo Attendance como métodos de clase.
module Attendance
  extend self
  def student_quantity
    @@quantity
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance

  attr_reader :nombre, :nota1, :nota2
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
end

# Crear 10 objetos de la clase Student y utilizar los métodos creados para saber si los alumnos están aprobados o no y, finalmente, mostrar el total de alumnos creados.
students = []
10.times { |i| students << Student.new("Alumno #{i}", rand(1..7), rand(1..7)) }
puts students[0].result
puts Student.student_quantity

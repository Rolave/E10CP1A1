module Test
  def result
    ( (@nota1 + @nota2) / 2.0 >= 4 ) ? "Estudiante aprobado" : "Estudiante reprobado"
  end
end

module Attendance
  def student_quantity
    quantity
  end
end

class Student
  include Test
  extend Attendance
  @@quantity = 0

  attr_reader :nombre, :nota1, :nota2
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end

  def student_quantity
    Attendance.student_quantity
  end
end

students = []
10.times { |i| students << Student.new("Alumno #{i}", rand(1..7), rand(1..7)) }
10.times { |i| puts students[i] }
puts students[0].result
puts Student.student_quantity

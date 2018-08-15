# Corregir los errores para poder ejecutar ambos métodos.
class MiClase
  def de_instancia
    puts 'Método de instancia!'
  end

  def self.de_clase
    puts 'Método de clase!'
  end
end

MiClase.de_clase
nueva_clase = MiClase.new
nueva_clase.de_instancia

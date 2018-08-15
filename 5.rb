# Transformar la clase Herviboro en un módulo.
# Implementar el módulo en la clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia.
# Finalmente imprimir la definición de Hervíboro.

module Herviboro
  DEFINIR = 'Sólo me alimento de vegetales!'

  def self.dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro

  def initialize(name)
    @name = name
  end

  def dieta
    Herviboro.dieta
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro::DEFINIR

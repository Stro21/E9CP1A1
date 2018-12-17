# Clase Dog
class Dog
  attr_reader :nombre, :raza, :color
  def initialize(hash)
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end

  def print_dog
    puts @nombre
    puts @raza
    puts @color
  end
end

propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }
perro = Dog.new(propiedades)
perro.print_dog

# clase Producto que no tiene xs
class Product
  attr_reader :name, :large, :medium, :small
  def initialize(name, large, medium, small)
    @name = name
    @large = large
    @medium = medium
    @small = small
  end

  def print
    puts name
    puts large
    puts medium
    puts small
  end
end

def lista_de_productos(archivo)
  data = []
  lista_productos = []
  File.open(archivo, 'r') { |file| data = file.readlines }
  data.each do |prod|
    ls = prod.split(', ').map(&:chomp)
    name, large, medium, small = ls
    lista_productos.push(Product.new(name, large.to_i, medium.to_i, small.to_i))
  end
  lista_productos
end

products_list = lista_de_productos('catalogo.txt')
products_list.each { |prod| prod.print }

# clase Producto que no tiene xs
class Product
  attr_reader :name, :large, :medium, :small
  def initialize(name, large, medium, small)
    @name = name
    @large = large
    @medium = medium
    @small = small
  end

  def data_archive
    "#{name}, #{large}, #{medium}, #{small}\n"
  end
end

def lista_de_productos(archivo)
  data = []
  lista_productos = []
  File.open(archivo, 'r') { |file| data = file.readlines }
  data.each do |prod|
    ls = prod.split(', ').map(&:chomp)
    name, large, medium, small = ls
    lista_productos.push(Product.new(name, large, medium, small.to_i))
  end
  lista_productos
end

def nuevo_catalogo(productos)
  file = File.open('nuevo_catalogo.txt', 'w')
  productos.each { |prod| file.puts prod.data_archive }
  file.close
end

products_list = lista_de_productos('catalogo.txt')
nuevo_catalogo(products_list)

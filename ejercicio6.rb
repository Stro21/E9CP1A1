# Class Product
class Product
  attr_reader :name, :large, :medium, :small, :xsmall
  def initialize(*arr)
    @name = arr[0]
    @large = arr[1].to_i
    @medium = arr[2].to_i
    @small = arr[3].to_i
    @xsmall = arr[4].to_i
  end

  def promedio
    (large + medium + small + xsmall) / 4
  end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ').map(&:chomp)
  products_list.push(Product.new(*ls))
end
products_list.each { |producto| puts producto.promedio }

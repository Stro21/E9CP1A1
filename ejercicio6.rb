# rubocop: disable LineLength

# Class Product
class Product
  attr_reader :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
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
  name, large, medium, small, xsmall = ls
  products_list.push(Product.new(name, large.to_i, medium.to_i, small.to_i, xsmall.to_i))
end
products_list.each { |producto| puts producto.promedio }

# rubocop: enable LineLength

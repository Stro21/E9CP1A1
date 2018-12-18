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
    prom = (large + medium + small + xsmall) / 4
    prom
  end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1].to_i, ls[2].to_i, ls[3].to_i, ls[4].to_i)
end
puts products_list
products_list.each { |product| puts product.promedio }

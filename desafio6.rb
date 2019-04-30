class Product
  def initialize(name, *precios)
    @name = name
    @precios = precios.map(&:to_i)
  end

  def average
   @precios.sum / @precios.length
 end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  end


print "#{products_list}\n"
print "Producto <<<<<nombre de producto>>>>> Promedio de precio: $#{products_list[0].average}\n"
print "Producto 2 Promedio de precio: $#{products_list[1].average}\n"
print "Producto 3 Promedio de precio: $#{products_list[2].average}\n"
print "Producto 4 Promedio de precio: $#{products_list[3].average}\n"
print "Producto 5 Promedio de precio: $#{products_list[4].average}\n"

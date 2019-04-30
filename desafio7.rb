class Product
  def initialize(name, *price_sizes)
    @name = name
    @large = price_sizes[0].to_i
    @medium = price_sizes[1].to_i
    @small = price_sizes[2].to_i
    @xsmall = price_sizes[3].to_i
  end

  def average
    (@large + @medium + @small + @xsmall) / 4
  end

  def prices_no_xs
    [@large, @medium, @small]
  end

  def to_s
    "#{@name}, #{@large}, #{@medium}, #{@small}\n"
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
print "Lista de precios sin XS:"
print "#{products_list[0].prices_no_xs}\n"

f = File.open('nuevo_catalogo.txt','w+')
products_list.each do |product|
  f << product
end
f.close

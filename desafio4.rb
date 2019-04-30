
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
 attr_accessor :name
 def initialize(name)
   @name = name[:nombre]
 end

 def ladrar
   "#{@name} está ladrando!\n"
 end
end

perro = Dog.new propiedades
print perro.ladrar if perro.is_a?Dog

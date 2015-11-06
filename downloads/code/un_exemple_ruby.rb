module AnimalSkills
  def eat
    puts "I'm eating !"
  end
 
  def move
    puts "I'm moving !"
  end
 
  def express; puts "I'm expressing !" end
end
 
class Animal
  include AnimalSkills # mixin
 
  @@name = 'an animal' # variable de classe
 
  def initialize size, weight, color # initialisation des variables d'instance
    @size = size.to_i
    @weight, @color = weight.to_i, color.to_s
  end
 
  def describe
    puts "I'm #{@@name} !"
    puts "I'm #{@size} meter tall, I weigh #{@weight} kilograms and I'm " << @color
  end
end
 
class Zebra < Animal # héritage
  @@name = 'a zebra' # rédéfinition de la variable de classe
 
  def initialize(size, weight, color = 'black and white') # surcharge
    super # appel de la méthode de la classe mère (Animal)
  end
end
 
z = Zebra.new(1, 50)
 
z.describe # => I'm a zebra ! / I'm 1 meter tall, I weigh 50 kilograms and I'm black and white
z.eat # => I'm eating !
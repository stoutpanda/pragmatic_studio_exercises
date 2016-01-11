#Attributes - Lesson 7

class Player
  attr_reader :health #getter method
  attr_accessor :name # getter & setter

  def initialize (name, health=100)
    @name = name.capitalize
    @health = health
  end
  def to_s
    "I'm #{@name} with a health of #{score}!"
  end
  def w00t
    @health += 15
    puts "#{@name} got wooted!"
  end
  def blam
    @health -= 10
    puts "#{@name} got balmmed!"
  end
  def score
    @health + @name.length
  end
  def name
    @name = @name.capitalize
  end

end


player1 = Player.new('larry',60)
player2 = Player.new('moe')
player3 = Player.new("curly", 125)


puts player1.health
puts player2.health
puts player3.health

player2.name = "lawrence"
puts player2.name
puts player2.to_s

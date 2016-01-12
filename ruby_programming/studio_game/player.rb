
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
    puts "#{@name} got blammed!"
  end
  def score
    @health + @name.length
  end
  def name
    @name = @name.capitalize
  end
end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end

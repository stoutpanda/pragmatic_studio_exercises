
class Player
  attr_reader :health,:score #getter method
  attr_accessor :name # getter & setter

  def initialize (name, health=100)
    @name = name.capitalize
    @health = health
  end
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}!"
  end
  def <=>(othr_plr)
    othr_plr.score <=> score
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
  def strong?
    @health > 100
  end
  def print_n_a_h ()
    puts "#{@name} (#{@health})"
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

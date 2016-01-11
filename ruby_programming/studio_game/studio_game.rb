#Arrays - Lesson 9

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


player1 = Player.new('larry',60)
player2 = Player.new('moe')
player3 = Player.new("curly", 125)


players = [player1,player2,player3]

puts "There are #{players.count} in the game:"

players.each do |player|
  puts player
end

players.each do |player|
  player.blam
  player.blam
  puts player
end

players.pop
players.push(player4 = Player.new("Shemp", 90))

players.each do |player|
  puts player
end

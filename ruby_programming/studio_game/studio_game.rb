#Objects Interacting - Lesson 10

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

class Game
  attr_reader :title

  def initialize (title)
    @title = title
    @players = []
  end

  def add_player (player)
    @players.push(player)
  end

  def play ()
    puts "There are #{@players.count} players in #{@title}."
    @players.each { |player| puts player }
    @players.each do |player|
      3.times { |p| player.blam }
      player.w00t
      puts player.to_s
    end
  end


end


  knuckleheads = Game.new("Knuckleheads")
  knuckleheads.add_player(player1 = Player.new("Moe"))
  knuckleheads.add_player(player2 = Player.new("larry",60))
  knuckleheads.add_player(player2 = Player.new("curly",125))
  knuckleheads.play

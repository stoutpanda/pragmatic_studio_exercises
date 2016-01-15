require_relative 'die'
require_relative 'player'


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
      die = Die.new
     case die.roll
     when 1..2
       player.blam
     when 3..4
       puts "#{player.name} was skipped."
     else
        player.w00t
      end
        puts player
    end
  end
end

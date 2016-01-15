require_relative 'die'
require_relative 'player'
require_relative 'game_turn'


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
      GameTurn.take_turn(player)
      puts player
    end
  end
end

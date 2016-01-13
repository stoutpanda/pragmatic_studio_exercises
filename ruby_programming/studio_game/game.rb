
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
      3.times { |p| player.blam }
      player.w00t
      puts player.to_s 
    end
  end
end

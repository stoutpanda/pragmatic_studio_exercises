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

  def print_stats ()
    print "\n#{@title} Statistics: \n"
    strong, wimp = @players.partition { |player| player.strong? }

    print "\n#{strong.count} Strong Player(s)\n"
    strong.each { |p| puts "#{p.name} (#{p.health})"}

    print "\n#{wimp.count} Wimpy Player(s)\n"
    wimp.each { |p| puts "#{p.name} (#{p.health})"}

    puts "\n#{@title} High Scores:"
    @players.sort.each do |plr|
      fn = plr.name.ljust(20, '.')
      puts "#{fn} #{plr.score}"
      end
    end

  def play (rounds)
    puts "There are #{@players.count} players in #{@title}."
    @players.each { |player| puts player }
      1.upto(rounds) do |n|
        puts "\nRound number #{n}:"
          @players.each do |player|
            GameTurn.take_turn(player)
        end
      end
    end
  end
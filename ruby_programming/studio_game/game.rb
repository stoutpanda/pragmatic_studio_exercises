require_relative 'die'
require_relative 'player'
require_relative 'game_turn'
require_relative 'treasure_trove'


class Game
  attr_reader :title,:total_points

  def initialize (title)
    @title = title
    @players = []
  end

  def add_player (player)
    @players.push(player)
  end
  def total_points
    @players.reduce(0) { |s,p| s + p.points }

  end

  def print_stats ()
    print "\n#{@title} Statistics: \n"
    strong, wimp = @players.partition { |player| player.strong? }

    print "\n#{strong.count} Strong Player(s)\n"
    strong.each { |p| p.print_n_a_h }

    print "\n#{wimp.count} Wimpy Player(s)\n"
    wimp.each { |p| p.print_n_a_h }

    print "\nTotal Treasure Points in game #{total_points}. \n"

    print "\nPlayer's Point Totals:\n"
    @players.sort.each do |p|
      puts "#{p.name}'s total points:"
      p.each_found_treasure do |t|
        puts "#{t.points} total #{t.name} points"
      end

      puts "#{p.points} grand total points."
    end
    puts "\n#{@title} High Scores:"
    @players.sort.each do |plr|
      fn = plr.name.ljust(20, '.')
      puts "#{fn} #{plr.score}"
      end
    end

  def play (rounds)
    puts "There are #{@players.count} players in #{@title}."
    @players.each { |player| puts player }
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.count} treasures to be found:"
    treasures.each { |t| puts "A #{t.name} is worth #{t.points}" }
    1.upto(rounds) do |n|
      puts "\nRound number #{n}:"
      @players.each do |player|
      GameTurn.take_turn(player)
        end
      end
    end
  end

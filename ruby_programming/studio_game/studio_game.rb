#Symboles & Structs
require_relative 'game'
require_relative 'player'

  knuckleheads = Game.new("Knuckleheads")
  knuckleheads.add_player(player1 = Player.new("Mike",80))
  knuckleheads.add_player(player2 = Player.new("frank",75))
  knuckleheads.add_player(player3 = Player.new("trevor",110))
  knuckleheads.play(100)
  knuckleheads.print_stats

#Seperate Source Files - Lesson 11
require_relative 'game'
require_relative 'player'

  knuckleheads = Game.new("Knuckleheads")
  knuckleheads.add_player(player1 = Player.new("Moe"))
  knuckleheads.add_player(player2 = Player.new("larry",60))
  knuckleheads.add_player(player2 = Player.new("curly",125))
  knuckleheads.play

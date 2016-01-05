
#Strings & Variables - lesson 3
require 'time'

player_1_name = "larry"
player_1_health = 60
player_2_name = "curly"
player_2_health = 60
player_3_name = "moe"
player_3_health = 60
player_4_name = "shemp"
player_4_health = 90
current_time = Time.new

puts player_1_name.capitalize + '\'s health is ' + player_1_health.to_s
puts player_2_name.upcase + '\'s health is ' + player_2_health.to_s
puts "#{player_3_name.capitalize}'s health is #{player_3_health.to_s}".center(50,"*")

puts "#{player_4_name.capitalize.ljust(50,'.')} #{player_4_health.to_s} health"

puts "The game started on #{current_time.strftime ("%A %m/%d/%Y at %H:%M%P")}."

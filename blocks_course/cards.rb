cards = ["Jack", "Queen", "King", "Ace", "Joker"]
cards.reverse_each { |c| puts "#{c.upcase} - #{c.length}" }
scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}
scores.each { |k,v| puts "#{k} scored a #{v}!" }

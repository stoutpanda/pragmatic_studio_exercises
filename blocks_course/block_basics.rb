#block basics
class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end
flyer = Array.new
1.upto(5) { |n| flyer << Flyer.new("Flyer #{n}","flyer#{1}@example.com", n * 1000) }

flyer.each { |f| puts "#{f.name} - #{f.miles_flown}"}
total = 0
flyer.each { |f| total += f.miles_flown }
puts "Total miles flown: #{total}"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
promotions.each { |k,v| puts "Earn #{v} miles by flying #{k}" }

flyer.each do |f|
  promotions.each do |k,v|
    puts "#{f.name} could earn #{f.miles_flown * v} by flying #{k}!"
  end
end

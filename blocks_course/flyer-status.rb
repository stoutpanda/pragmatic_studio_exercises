#block basics
class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end



flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

platinum_class, regular_class = flyers.partition { |f| f.status == :platinum }

name_tag = flyers.map { |f| "#{f.name.upcase} (#{f.status.upcase})" }
puts name_tag

kilo_flight  = flyers.map { |f| f.miles_flown * 1.6 }
p kilo_flight

total_miles = flyers.reduce(0) { |t,f| t + f.miles_flown }
puts "Total Miles: #{total_miles}"

kilo_total = kilo_flight.reduce(:+)
puts "Total Kilometers: #{kilo_total}"

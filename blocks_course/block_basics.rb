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
puts flyer

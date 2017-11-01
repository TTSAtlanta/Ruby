class Person
  def initialize(name, city)
  	@name = name
  	@city = city
  end

  def name
  	@name
  end

  def city
  	@city
  end
end

dude = Person.new("Rich", "Atlanta")
puts "The name of the object is #{dude.name}"
puts "The city of the object is #{dude.city}"


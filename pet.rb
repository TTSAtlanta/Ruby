class Pet
  def initialize(name, pet_type)
  	@name = name
  	@pet_type = pet_type
  end

  def name
  	@name  	
  end

  def pet_type
    @pet_type
  end

end 

fido = Pet.new("Fido", "dog")

puts fido.name 

puts fido.pet_type


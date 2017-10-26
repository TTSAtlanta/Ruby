animals = %w(cat dog aardvark moose capybara ant llama bear)

fave = animals[4]

animals.each do |animal|
  if animal == fave
  	puts "I love #{fave}'s"
  else 
    puts animal  	
  end
end 	
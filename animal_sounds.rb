puts "Choose cat, dog, llama or capybara: "

choice = gets.chomp.downcase

if choice == "cat"
	puts "Meow"
elsif choice == "dog"
  puts "Woof!"
elsif choice == "llama"
  puts "Yaaaargh!"
elsif choice == "capybara"
  puts "Sup!"		
else		
	puts "Please pick an animal from the list provided"
end


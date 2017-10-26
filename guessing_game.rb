puts "Please pick a number between 1 and 10: "

choice = gets.chomp.to_i
secret = 4

if choice < 1 || choice > 10
  puts "Please enter a number between 1 and 10"
else
	if choice == secret
		puts "Wow!  You guessed it!"
  else
  	puts "Nope. Thats not it"
  end
end


secret = "#chocolategrahamcrackers"

puts "Enter the secret word: "
input = gets.chomp

while input != secret
	puts "Not the word. Try again"
	input = gets.chomp
end

puts "You got it!!"
start_array = ["Rock.", "Paper.", "Scissors.", "Shoot!"]


def player_choice (player1)
if player1 == "R"
		player1 = "ROCK"
		puts "Player chooses #{player1}"
		player2(player1)

elsif player1 == "P"
		player1 = "PAPER"
		puts "Player chooses #{player1}"
		player2(player1)
elsif player1 == "S"
		player1 = "SCISSORS"
		puts "Player chooses #{player1}"
		player2(player1)
else
		puts "com'on son pick one: R, P or S"
		player1 = gets.chomp.upcase	
		player_choice(player1)		
	end
		
end

def player2(player1)
	player_wins = 0
	cpu_wins = 0
	trash_talk = ["you are no match for my ROSHAMBO", "better luck next time grasshopper", "keep practing grasshopper", "you can't beat me!"]
	player2_choice = rand(1..3)
		if player2_choice == 1
				player2_choice = "ROCK"
		elsif player2_choice == 2
				player2_choice = "PAPER"	
		else player2_choice = "SCISSORS"	
		end
	puts "Computer chooses #{player2_choice}"

	if player1 == "ROCK" && player2_choice == "ROCK"
		puts "tie"
		puts "ties are like kissing your sister"
		
	elsif player1 == "ROCK" && player2_choice == "PAPER"
		puts "#{player2_choice} beats #{player1}"
		puts "Computer wins"
	
		puts trash_talk[rand 3]

	elsif player1 == "ROCK" && player2_choice == "SCISSORS"
		puts "#{player1} beats #{player2_choice}"
		puts "You win"
		
	elsif player1 == "PAPER" && player2_choice == "ROCK"
		puts "#{player1} beats #{player2_choice}"
		puts "You win"
		
	elsif player1 == "PAPER" && player2_choice == "PAPER"
		puts "tie"
		
	elsif player1 == "PAPER" && player2_choice == "SCISSORS"
		puts "#{player2_choice} beats #{player1}"
		puts "Computer wins"
		puts trash_talk[rand 3]

	elsif player1 == "SCISSORS" && player2_choice == "ROCK"
		puts "#{player2_choice} beats #{player1}"
		puts "Computer wins"
		puts trash_talk[rand 3]

	elsif player1 == "SCISSORS" && player2_choice == "PAPER"
		puts "#{player1} beats #{player2_choice}"
		puts "You win"
		
	elsif player1 == "SCISSORS" && player2_choice == "SCISSORS"
		puts "tie"	
					
	end
	
	
end

start_array.each do |i|
	puts i
		
	end
puts "please choose R, P or S"
player1 = gets.chomp.upcase
player_choice(player1)

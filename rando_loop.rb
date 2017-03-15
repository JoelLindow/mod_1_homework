puts "TRY TO GUESS THE RANDOM NUMBER!"
random_number = rand(1..10)
puts "Pick any number between 0 and 10:"
guess = gets.chomp.to_i

until guess == random_number
	puts "Nope! Try again!"
	guess = gets.chomp.to_i
end

puts " You Got It!"
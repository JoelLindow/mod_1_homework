puts "It's random number guessin' time!"
puts "---------------------------------"
puts ""
puts "Using Until"
number = rand(0..10)
guess = rand(0..10)

until guess == number
  puts "Guess is #{guess}"
  puts "Guess again!"
  guess = rand(0..10)
end
puts "Guess is #{guess}"
puts "You win!"

puts ""
puts "---------------------------------"
puts "Using While"
number = rand(0..10)
guess = rand(0..10)

while guess != number
  puts "Guess is #{guess}"
  puts "Guess again!"
  guess = rand(0..10)
end
puts "Guess is #{guess}"
puts "You win!"

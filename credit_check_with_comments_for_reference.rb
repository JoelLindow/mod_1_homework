require 'pry'

# I KNOW THE NOTES ARE UGLY, BUT IT WAS THE ONLY WAT I COULD KEEP MY LOGIC STRAIGHT WHILE I
# WAS COMPLETING THIS EXERCISE. IN THE FUTURE I WON'T LEAVE SO MANY NOTES, BUT FOR NOW
# IT HAS HELPED ME AS A REFERENCE.

credit_card_number = "5541808923795240"  #<--- entered as a string, becasue a
                                         #     gets.chomp might have done that anyway.
prep_card_to_check = credit_card_number.split("").reverse!  #<--- passing card numbers
doubled_numbers = []
checking_number = -1 #<---- defining how long the number we are sorting is
                    #      so we can be sure to check every digit while running our loop

  while checking_number != prep_card_to_check.length  #<--- wanted to use until, but i'm trying WHILE to understand
      if checking_number.odd?           #<--- if statement to set conditions of check. IF # is in ODD index (checking_number) potision...
        odd_digits = prep_card_to_check[checking_number].to_i * 2  #<--- devining variable to store odd numbers (digits) checked. Converting to integers from "string" items.
      elsif odd_digits.to_i > 9       #<---
        reduced_digits = (odd_digits - 9)
        doubled_numbers << reduced_digits
      else  doubled_numbers << odd_digits
      end

      if checking_number.even?
        even_digits = prep_card_to_check[checking_number]   #<--- checks if card digit is even index position (unneccessary to validate)
        doubled_numbers << even_digits
      end
      checking_number += 1 #<--- increasing index position, to allow "next number in collection" to be checked
  end

#binding.pry

processed_list_of_numbers = doubled_numbers.map do |x| #<--- variable assigned a proccess that turns all items in array to integers.
                             x.to_i
                            end

sum_of_processed = processed_list_of_numbers.inject(:+) #adding together all the integers for a sum

# binding.pry

if (sum_of_processed % 10) == 0
  puts ""
  puts "The result is:"
  puts "This Credit Card Number Is Valid!"
else
  puts ""
  puts "The result is:"
  puts "This Credit Card Number Is Not Valid. Call The Police!"
end

# check_valid =

      #if divisable by 10 (If modulo equals 0) the card is valid
      #if not divisible by 10 (If modulo != 0) the card is invalid!
""

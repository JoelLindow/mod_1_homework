require 'pry'

credit_card_number = "5541808923795240"
prep_card_to_check = credit_card_number.split("").reverse!
doubled_numbers = []
checking_number = -1

  while checking_number != prep_card_to_check.length
      if checking_number.odd?
        odd_digits = prep_card_to_check[checking_number].to_i * 2
      elsif odd_digits.to_i > 9       #<---
        reduced_digits = (odd_digits - 9)
        doubled_numbers << reduced_digits
      else  doubled_numbers << odd_digits
      end

      if checking_number.even?
        even_digits = prep_card_to_check[checking_number]
      end


processed_list_of_numbers = doubled_numbers.map do |x|
                             x.to_i
                            end

sum_of_processed = processed_list_of_numbers.inject(:+)

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

# binding.pry
""

card_number = "4929735477250543"
valid = false

account = card_number.split("")
check_digit = account.pop #<--- mutates array named account

account.each_with_index do |x, idx|

end


puts check_digit
puts account
# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

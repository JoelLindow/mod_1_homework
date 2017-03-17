# card_number = "4929735477250543"
# valid = false
#
# account = card_number.split("")
# check_digit = account.pop #<--- mutates array named account
#
# account.each_with_index do |x, idx|
#
# end
#
#
# puts check_digit
# puts account
#
# # Your Luhn Algorithm Here
#
# # Output
# ## If it is valid, print "The number is valid!"
# ## If it is invalid, print "The number is invalid!"

#
# ADAMSCODE BEGINS
#
# card_number = "4929735477250543"
#
# valid = false
#
# x = -1
# until card_number[x] == nil
#  digit = card_number[x].to_i
#  if x.even?
#    doubled_digit = digit * 2
#      if doubled_digit > 9
#        doubled_string = doubled_digit.to_s
#        separated_digit_string_1 = doubled_string[0]
#        separated_digit_string_2 = doubled_string[1]
#        separated_digit_summed = separated_digit_string_1.to_i + separated_digit_string_2.to_i
#        print separated_digit_summed
#      else
#        print doubled_digit
#      end
#  else
#    print digit
#  end
#  x += -1
# end
#
# # ADAMS CODE ENDS

# CARLS CODE BEGINS

##########---Working with Strings and Integers homework 03/13/2017
puts "-----Working with Strings and Integers homework - 03/13/2017-----"
puts "---First & Last Assignment"
puts ""
f = "First"
l = "Last"

# String Concatenation
puts "-String Concatenation"
puts f + l
puts l + f
puts f + " " + l
puts l + " " + f + " " + l + " " + f

#String Interpolation
puts "-String Interpolation"
puts "#{f}#{l}"
puts "#{l}#{f}"
puts "#{f} #{l}"
puts "#{l} #{f} #{l} #{f}"
puts ""
#end-----------------------------------------------------

###---Names
puts "---Names Assignment"
name_1 = "Megan Smith"
name_2 = "Todd Park"
#? Can you come up with two ways to output just the fragment "Megan" from name_1?
puts "-2 ways to output the fragment MEGAN from name_1"
puts name_1[0..4]
puts name_1[0...5]
puts ""

#? Would either of your techniques from A would work to output "Todd" from name_2? Why or why not?
  #: NO! Becasue the ranges I used for the previous name will not be proper for the name "Todd"

#? Write code that can output the initials of name_2.
puts "-Output the initials of name_2"
puts name_2[0] + name_2[5]
puts ""
#end----------------------------------------------------

###---Just Integers
puts "---Just Integers"
a = 12
b = 65
c = 31
d = 98
print "Average of A, B, C & D is "
puts (a + b + c + d) / 4

#? Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
  #: NO! Becasue I used the method properly i nthe calculator program.

#? Say you have the operation a + b * c / d. What result do you get out from Ruby?
#  What other outputs can you get out by adding one or more pairs of parentheses to the equation?
puts a + b * c / d
puts (a + b) * c / d
puts a + b * (c / d)
#end----------------------------------------------------

###---Strings and Integers
puts "---Strings and Integers"
puts "-People"
a1 = "Ezra"
b1 = "Ada"
c1 = "Yukihiro"
d1 = "Grace"

print "Total Characters of all names is "
puts a1.length + b1.length + c1.length + d1.length

print "Average length of all names is "
puts (a1.length + b1.length + c1.length + d1.length) / 4
puts ""

#---Happy Birthday
puts "-Happy Birthday"
print "What is your age?"
age = gets.chomp.to_i
puts ("Happy " * age) + "Birthday!"
puts ""
#---String Compression (S16N)
puts "-String Compression"
print "What string would you like to compress? =>"
string_to_compress = gets.chomp
puts string_to_compress[0] + (string_to_compress.length - 2).to_s + string_to_compress[-1]

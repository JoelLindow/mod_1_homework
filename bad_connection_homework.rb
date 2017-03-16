goodbye_counter = 0

def input_has_downcase?(input)
    input.delete(" ", input[-1]).chars.each do |char|
        if char == char.downcase
            return true
        end
    end
    return false
end

def input_has_upcase?(input)
     input.delete(" ", input[-1]).chars.each do |char|
        if char == char.upcase
            return true
        end
    end
    return false
end

puts "HELLO, THIS IS A GROCERY STORE"

while goodbye_counter < 2
    input = gets.chomp
        if input == "GOODBYE!"
            if goodbye_counter == 0
                goodbye_counter =+ 1
                puts "ANYTHING ELSE I CAN HELP YOU WITH?"
            else
                goodbye_counter += 1
                puts "THANK YOU FOR CALLING!"
            end
        elsif input_has_downcase?(input)
            puts "I AM HAVING A HARD TIME HEARING YOU."
        elsif input_has_upcase?(input)
            puts "NO, THIS IS NOT A PET STORE"

        elsif input == ""
            puts "HELLO?!"
        end
end

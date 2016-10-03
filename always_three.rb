puts 'Give me a number please'
number_1 = gets
number_1 = number_1.to_i
number_2 = number_1
number_2 += 5
number_2 *= 2
number_2 -= 4
number_2 /= 2
number_2 = number_2 - number_1
puts "The new number is and always will be #{number_2}"

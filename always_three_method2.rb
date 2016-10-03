def always_three(num)
    num = (((((num + 5) * 2) - 4) /2) - num)
    puts num
end

puts "Enter any number"
num = gets.to_i
always_three(num)
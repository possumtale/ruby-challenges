def always_three
    puts "Enter any number"
    num = gets.to_i
    newnum = (((((num + 5) * 2) - 4) /2) - num)
    puts newnum
end

always_three
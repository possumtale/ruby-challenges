all_chores = [
    "wash dishes",
    "sweep the floor",
    "do laundry",
    "walk the dog",
    "feed the cats",
    "give me a foot rub"
]

total_chores = all_chores.size
chores_done = 0

while (chores_done <= total_chores)
    puts "Did you " + all_chores[chores_done] + "?"
    answer = gets.chomp.downcase
    if (answer== "y")
        puts "I love you"
    else
        puts "You're fired!"
    end
    chores_done += 1    
end

puts "Good job! You're a keeper!"
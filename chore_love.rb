all_chores = [
    "wash dishes",
    "sweep the floor",
    "laundry",
    "walk the dog",
    "feed the cats",
    "give me a foot rub"
]

total_chores = all_chores.size
chores_done = 0

puts "What chores have you done today?"

while (chores_done <= total_chores) 
 puts "Did you #{all_chores[chores_done]}? "
 answer = gets.comp.downcase
    if (answer==y) then
        puts "I love you!"
        chores_done += 1
    elseif (answer==n)
        puts "I hate you!"
        chores_done = total_chores
    end
end


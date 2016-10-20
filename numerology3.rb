#This version of the numberology challenge works as of Thu 10/20

def get_birth_path_num(birthdate)
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i  + birthdate[5].to_i  + birthdate[6].to_i  + birthdate[3].to_i

    number = number.to_s
    number = number[0].to_i + number[1].to_i

    if number > 9
        number = number[0].to_i + number[1].to_i
    end

    return number
end

def get_message(birth_path_num)
    case birth_path_num
        when 1
        puts "Your numberology number is #{birth_path_num}. \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

        when 2
        puts "Your numberology number is #{birth_path_num}. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

        when 3
        puts "Your numberology number is #{birth_path_num}. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

        when 4
        puts "Your numberology number is #{birth_path_num}. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

        when 5
        puts "Your numberology number is #{birth_path_num}. \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.love of variety and the ability to adapt to most situations. Ruled by Mercury."

        when 6
        puts "Your numberology number is #{birth_path_num}. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

        when 7
        puts "Your numberology number is #{birth_path_num}. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

        when 8
        puts "Your numberology number is #{birth_path_num}. \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

        when 9 
        puts "Your numberology number is #{birth_path_num}. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

        else puts "Houston, we have a problem."
    end
end

puts 'Enter your birthday in DDMMYYYY format'
birthdate = gets
birth_path_num = get_birth_path_num(birthdate)
get_message(birth_path_num)

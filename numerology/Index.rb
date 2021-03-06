require 'sinatra'

def get_birth_path_num(birthdate)
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i  + birthdate[5].to_i  + birthdate[6].to_i  + birthdate[7].to_i

   number = number.to_s
   number = number[0].to_i + number[1].to_i

    if number > 9
        number = number.to_s
        number = number[0].to_i + number[1].to_i
    end

    return number
end

def get_message(birth_path_num)
    case birth_path_num
        when 1
        return "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

        when 2
        return "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

        when 3
        return "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

        when 4
        return "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

        when 5
        return "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.love of variety and the ability to adapt to most situations. Ruled by Mercury."

        when 6
        return "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

        when 7
        return "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

        when 8
        return "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

        when 9
        return "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

        else return "Houston, we have a problem."
    end
end




get '/all_messages' do
    @msg1 = "One: " + get_message(1)
    @msg2 = "Two: " + get_message(2)
    @msg3 = "Three: " + get_message(3)
    @msg4 = "Four: " + get_message(4)
    @msg5 = "Five: " + get_message(5)
    @msg6 = "Six: " + get_message(6)
    @msg7 = "Seven: " + get_message(7)
    @msg8 = "Eight: " + get_message(8)
    erb :all_messages
end

get '/:birthdate' do
    birthdate = params[:birthdate]
    birth_path_num = get_birth_path_num(birthdate) - 1
    @message = get_message(birth_path_num)
    erb :index
end




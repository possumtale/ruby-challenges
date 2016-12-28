require 'sinatra'

def get_birth_path_num(birthdate)
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i  + birthdate[5].to_i  + birthdate[6].to_i  + birthdate[7].to_i

    while number > 10
       number = number.to_s
       number = number[0].to_i + number[1].to_i
    end
        
    return number
end

# In this version, I'm creating a hash to contain the messages. This way, I can easily output all the messages together if I want to. I could find a way to do this using the case approach - maybe an iteration through the cases 1-9 - but thought this would be good practice.

birth_messages = {
    1 => 'One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.', 
    2 => 'This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.', 
    3 => 'Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter.', 
    4 => 'This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.', 
    5 => 'This is the freedom lover. The number five is an intellectual vibration. These are "idea" people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.', 
    6 => 'This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.', 
    7 => 'This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.', 
    8 => 'This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.', 
    9 => 'This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.'
    }

#birth_path_num = get_birth_path_num("10251965")
#puts birth_path_num
#puts birth_messages[birth_path_num]

#puts birth_messages.values will list all of the messages, but can't add text or line breaks
#birth_messages.each { |value, msg| puts "Birth number #{value}: #{msg} \n \n"}

get '/:birthdate' do
    birthdate = params[:birthdate]
    "#{birthdate}"
    birth_path_num = get_birth_path_num(birthdate)
    message = birth_messages[birth_path_num]
    "#{message}"
end

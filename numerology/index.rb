require 'sinatra'

def get_birth_path_num(birthdate)
    
    
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i  + birthdate[5].to_i  + birthdate[6].to_i  + birthdate[7].to_i

    while number > 10
       number = number.to_s
       number = number[0].to_i + number[1].to_i
    end
    
    return number
 
end

# In this version, I used an array contain the messages. This way, I should be able to easily output all the messages together if I want to. I could find a way to do this using the case approach - maybe an iteration through the cases 1-9 - but thought this would be good practice.

birth_messages = [
    'Your numberology number is #{birth_path_num}. \n One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.', 
    'Your numberology number is #{birth_path_num}. \n This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.', 
   'Your numberology number is #{birth_path_num}. \n Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter.', 
    'Your numberology number is #{birth_path_num}. \n This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.', 
    'Your numberology number is #{birth_path_num}. \n This is the freedom lover. The number five is an intellectual vibration. These are "idea" people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.', 
    'Your numberology number is #{birth_path_num}. \n This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.', 
    'Your numberology number is #{birth_path_num}. \n This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.', 
    'Your numberology number is #{birth_path_num}. \n This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.', 
    'Your numberology number is #{birth_path_num}. \n This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.',
    'Houston, we have a problem!'
    ]   

#It seems that checking for an entry that is not a date is beyond the scope of the exercise. I left the error message in for future iterations.
    
get '/all_messages' do
    @msg1 = "One: " + birth_messages[0]
    @msg2 = "Two: " + birth_messages[1]
    @msg3 = "Three: " + birth_messages[3]
    @msg4 = "Four: " + birth_messages[4]
    @msg5 = "Five: " + birth_messages[5]
    @msg6 = "Six: " + birth_messages[6]
    @msg7 = "Seven: " + birth_messages[7]
    @msg8 = "Eight: " + birth_messages[8]
    erb :all_messages
end

get '/:birthdate' do
    birthdate = params[:birthdate]
    birth_path_num = get_birth_path_num(birthdate) - 1
    @message = birth_messages[birth_path_num]
    erb :index
end

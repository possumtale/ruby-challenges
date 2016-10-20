require 'rubygems'
require 'twilio-ruby'

account_sid = "AC3ebc37697d420d64a3444c285ff4d9e3"
auth_token = "3833678943e80c15be7b1c5253e69608"

@client = Twilio::REST::Client.new(account_sid, auth_token)

def fetch_num
    puts "Enter your area code and phone number without dashes."
    ph_num = gets.to_s
    ph_num = "+1#{ph_num}"
    return ph_num
end

def eight_ball
    puts "Now, ask me a question and I'll text you the answer."
    
    question = gets
    
    possible_answers = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes, definitely', 'You may rely on it', 'As I see it, yes', 'Most likely', 'Outlook good', 'Yes', 'Signs point to yes', 'Reply hazy try again', 'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', 'Don\'t count on it', 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubtful']

    rand_num = rand(0..19)
    answer = possible_answers.fetch(rand_num)
    return answer
end

this_num = fetch_num
this_answer = eight_ball


puts this_answer
puts this_num


message = @client.account.messages.create(
    :from => "+16087090617",
    :to => "#{this_num}",
    :body => "#{this_answer}"
)



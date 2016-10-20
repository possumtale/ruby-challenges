require 'rubygems'
require 'twilio-ruby'

account_sid = "AC3ebc37697d420d64a3444c285ff4d9e3"
auth_token = "3833678943e80c15be7b1c5253e69608"

@client = Twilio::REST::Client.new(account_sid, auth_token)

my_message = "This in your mom. I'm testing a new app I'm learning to use for my Ruby programming class."

message = @client.account.messages.create(
    :from => "+16087090617",
    :to => "+16087725560",
    :body => "#{my_message}"
)

puts message.to
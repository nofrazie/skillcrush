require 'rubygems'
require 'twilio-ruby'

account_sid = "AC321301bc882cd02fb303b92482992b90"
auth_token = "24d037f6c118d68d33ca215c89a8d301"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#Magin 8-Ball Script
print "Ask any question you want."
question = gets.chomp

number = rand(20)
case number
when 1
  answer =  "It is certain"
when 2
  answer =  "It is decidedly so"
when 3
  answer =  "Without a doubt"
when 4
  answer =  "Yes, definitely"
when 5
  answer =  "You may rely on it"
when 6
  answer =  "As I see it, yes"
when 7
  answer =  "Most likely"
when 8
  answer =  "Outlook good"
when 9
  answer =  "Yes"
when 10
  answer =  "Signs point to yes"
when 11
  answer =  "Reply hazy try again"
when 12
  answer =  "Ask again later"
when 13
  answer =  "Better not tell you now"
when 14
  answer =  "Cannot predict now"
when 15
  answer =  "Concentrate and ask again"
when 16
  answer =  "Don't count on it"
when 17
  answer =  "My reply is no"
when 18
  answer =  "My sources say no"
when 19
  answer =  "Outlook not so good"
when 20
  answer =  "Very doubtful"
else
  answer =  "You might want to ask again"
end


message = @client.account.messages.create(
  :from => "+17078279148",
  :to => "+17073420353",
  :body => "#{answer}"
)

puts message.to

require 'twilio-ruby'

account_sid = "" # Your Account SID from www.twilio.com/console
auth_token = ""   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.account.messages.create(:body => "Frances, it's REALLY LATE!",
    :to => "+447973628682",    # Replace with your phone number
    :from => "+441634540313")  # Replace with your Twilio number

puts message.sid

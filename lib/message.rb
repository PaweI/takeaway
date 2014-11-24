require 'twilio-ruby'

class Message

  account_sid = ENV['TWILIO_ID']
  auth_token = ENV['TWILIO_TOCKEN']
  CLIENT = Twilio::REST::Client.new account_sid, auth_token
 
  DELIVERY_TIME = (Time.now.hour+1).to_s + ":" + (Time.now.strftime "%M")

  def send_message_to_client(number)
    @message = CLIENT.account.messages.create({:to => number, 
      :from => "+441212853508", 
      :body => "Thank you! Your order was placed and will be delivered before #{DELIVERY_TIME}"})
    "Message has been sent"
  end
end


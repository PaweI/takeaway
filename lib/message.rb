require 'twilio-ruby'

class Message
 
  @account_sid = "ACb49a63dc4878f057a6a903714afa158c"
  @auth_token = ENV['TOCKEN']
  
  @client = Twilio::REST::Client.new @account_sid, @auth_token

  def send_message_to_client(text)
    @message = @client.account.messages.create({:to => "+447969959235", 
      :from => "+441212853508", 
      :body => text})
  end
end
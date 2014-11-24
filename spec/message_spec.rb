require 'message'

describe Message do

  let(:text) { Message.new }

  it 'sends message to customer once order received' do
    expect(text.send_message_to_client("+447969959235")).to eq "Message has been sent"
  end

end
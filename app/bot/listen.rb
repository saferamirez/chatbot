require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
  p "Ya Casi"
  Bot.deliver({
    recipient: message.sender,
    message: {
      text: "soy el duro, asi que no me escribas estas pendejadas -> #{message.text}" 
    }
  }, access_token: ENV["ACCESS_TOKEN"])
end

require 'telegram/bot'

class PhiloBot
  def initialize
    token = 'YOUR_TOKEN_KEY'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |msg|
        # rubocop:disable Layout/LineLength
        happyquote = ['Be yourself; everyone else is already taken',
                      'To live is the rarest thing in the world. Most people exist, that is all.',
                      'Live as if you were to die tomorrow. Learn as if you were to live forever.',
                      'Great minds discuss ideas; average minds discuss events; small minds discuss people.',
                      'Do one thing every day that scares you'].sample

        sadquote = ['Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate; only love can do that.',
                    'Our lives begin to end the day we become silent about things that matter.',
                    'In the end, we will remember not the words of our enemies, but the silence of our friends.',
                    "I have not failed. I've just found 10,000 ways that won't work.",
                    'Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.'].sample

        message = "My fellow friend, send :'Im Happy' for a happy quote.
      Otherwhise send 'Im Sad' so you can recieve a proper quote."
        # rubocop:enable Layout/LineLength

        message = happyquote if msg.text == 'Im Happy'

        message = sadquote if msg.text == 'Im Sad'

        bot.api.send_message(chat_id: msg.chat.id, text: message)
      end
    end
  end
end

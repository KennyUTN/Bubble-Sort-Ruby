require 'telegram/bot'

token = "1645105386:AAEkFx8umI3nEcBG5FUrGjr7zNaIUpkB6YY"

Telegram::Bot::Client.run(token) do |bot|

  bot.listen do |msg|
    bot.api.send_message(chat_id: message.chat.id, text: "Chupame 0la pija")
  end
end

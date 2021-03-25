#!/usr/bin/env ruby
require_relative '../lib/bot.rb'

class Main
  def initialize
    @bot = PhiloBot.new
  end
end

Main.new
puts 'Bot Running, press CTRL-C / CMD-C to shut down'

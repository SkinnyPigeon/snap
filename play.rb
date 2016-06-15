require_relative './player'
require_relative './snap_cards'
require_relative './game'
require_relative './table'

class Play

  def initialize
  end

system "clear"

@player1=Player.new("Skinny Pigeon")
@player2=Player.new("Joey-Joe-Joe")
suits = ["♠️", "♥️", "♣️","♦️"]
numbers = ["A", 2, 3, 4]
@pack = numbers.product(suits)
@deck = Deck.new(@pack)
@table = Table.new
@players = [@player2, @player]
@game=Game.new(@players, @deck)



puts "Your go #{@player1.name}"
end



play = Play.new
play

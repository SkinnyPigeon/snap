require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
# require_relative '../player2'
require_relative '../snap_cards'
require_relative '../game'
require_relative '../table'
require 'pry-byebug'

class TestPlay<MiniTest::Test

  def setup
    @player=Player.new("Skinny Pigeon")
    @player2=Player.new("Rubot")
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
    @table = Table.new
    @players = [@player2, @player]
    @game=Game.new(@players, @deck)
  end




end
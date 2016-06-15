require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
require_relative '../computer_player'
require_relative '../snap_cards'
require_relative '../game'
require_relative '../table'
require 'pry-byebug'

class TestPlay<MiniTest::Test

  def setup
    @player=Player.new("Skinny Pigeon")
    @computer_player=ComputerPlayer.new("Rubot")
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
    @table = Table.new
    @players = [@computer_player, @player]
    @game=Game.new(@players, @deck)
  end

  


end
require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
require_relative '../snap_cards'

class TestPlayer<MiniTest::Test

  def setup
    @player=Player.new("Skinny Pigeon")
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
  end

  def test_player_has_name
    assert_equal("Skinny Pigeon", @player.name)
  end

  def test_player_has_cards
    assert_equal([[[4, "♦️"]]], @player.gets_cards(@deck))
  end

  def test_player_presents_card
    @player.gets_cards(@deck)
    assert_equal([[4, "♦️"]], @player.presents_card())
  end















end
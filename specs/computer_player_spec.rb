require 'minitest/autorun'
require 'minitest/rg'
require_relative '../computer_player'
require_relative '../snap_cards'

class TestComputerPlayer<MiniTest::Test

  def setup
    @computer_player=ComputerPlayer.new("Rubot")
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
  end

  def test_player_has_name
    assert_equal("Rubot", @computer_player.name)
  end

  def test_player_has_cards
    assert_equal([[[4, "♦️"]]], @computer_player.gets_cards(@deck))
  end

  def test_player_presents_card
    @computer_player.gets_cards(@deck)
    assert_equal([[4, "♦️"]], @computer_player.presents_card(@computer_deck))
  end

  













end
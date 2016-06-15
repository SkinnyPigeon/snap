require 'minitest/autorun'
require 'minitest/rg'
require_relative '../snap_cards'

class TestDeck<MiniTest::Test

  def setup
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
  end

  def test_card_generation
    assert_equal(["A", "♠️"], @pack[0])
  end

  def test_deal
    assert_equal([[4, "♦️"]], @deck.deal(1))
  end

end
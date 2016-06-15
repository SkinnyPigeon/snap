require 'minitest/autorun'
require 'minitest/rg'
require_relative '../card'

class TestCard<MiniTest::Test

  def setup
    @suits = ["♠️", "♥️", "♣️","♦️"]
    @numbers = ["A", 2, 3, 4]

    @cards = Card.new(@suits, @numbers)

  end

  def test_ace_of_spades
    assert_equal({suits: "♠️", numbers: "A"}, @cards.make_cards[0])
  end

end
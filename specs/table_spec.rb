require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
require_relative '../snap_cards'
require_relative '../table'

class TestTable<MiniTest::Test

  def setup
    @player=Player.new("Skinny Pigeon")
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
    @table = Table.new()
  end

  def test_table_has_no_cards
    assert_equal(0, @table.game_space.count)
  end

  def test_table_can_receive_cards
    assert_equal([[[4, "♦️"]]], @table.table_gets_card(@player))
  end

end
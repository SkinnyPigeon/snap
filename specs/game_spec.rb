require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
require_relative '../computer_player'
require_relative '../snap_cards'
require_relative '../game'
require_relative '../table'

class TestGame<MiniTest::Test

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

  def test_game_starts_with_two_players
    assert_equal(2, @game.number_of_players)
  end

  def test_current_player_starts_as_computer_player
    assert_equal(@computer_player, @game.current_player)
  end

  def test_table_has_card
    @computer_player.gets_cards(@deck)
    @player.gets_cards(@deck)
    assert_equal([[[4, "♦️"]]], @game.table_card)
  end








end
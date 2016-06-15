require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
require_relative '../computer_player'
require_relative '../snap_cards'
require_relative '../game'
require_relative '../table'
require 'pry-byebug'

class TestGame<MiniTest::Test

  def setup
    @player=Player.new("Skinny Pigeon")
    # @computer_player=ComputerPlayer.new("Rubot")
    @player2=Player.new("Joey-Joe-Joe")
    suits = ["♠️", "♥️", "♣️","♦️"]
    numbers = ["A", 2, 3, 4]
    @pack = numbers.product(suits)
    @deck = Deck.new(@pack)
    @table = Table.new
    @players = [@player2, @player]
    @game=Game.new(@players, @deck)
  end

  def test_game_starts_with_two_players
    assert_equal(2, @game.number_of_players)
  end

  def test_current_player_starts_as_computer_player
    assert_equal(@player2, @game.current_player)
  end

  def test_table_has_card
    @player2.gets_cards(@deck)
    @player.gets_cards(@deck)
    assert_equal([[[4, "♦️"]]], @game.table_card)
  end

  def test_update_current_player
    @game.update_current_player()
    assert_equal(@player, @game.current_player)
  end

  def test_top_card
    @player2.gets_cards(@deck)
    @player.gets_cards(@deck)
    assert_equal( [[4, "♦️"]], @game.top_card)
  end


  def test_latest_card
    @player2.gets_cards(@deck)
    @player.gets_cards(@deck)
    assert_equal( [[4, "♦️"]], @game.latest_card)
  end

  def test_compare_cards
    @player2.gets_cards(@deck)
    @player.gets_cards(@deck)
    @game.table_card   
    @game.update_current_player 
    @game.table_card
    assert_equal(true, @game.compare_cards)
  end

  # def test_player_one_calls_snap
  #   @player2.gets_cards(@deck)
  #   @player.gets_cards(@deck)
  #   @game.table_card   
  #   @game.update_current_player 
  #   @game.table_card
  #   assert_equal(true, @game.player_one_calls_snap)
  # end

  def test_player_two_calls_snap
    @player2.gets_cards(@deck)
    @player.gets_cards(@deck)
    @game.table_card   
    @game.update_current_player 
    @game.table_card
    assert_equal(true, @game.player_two_calls_snap)
  end

  def test_player_one_places_card
  end

end




# def test_computer_player_hits_snap
#   @computer_player.gets_cards(@deck)
#   @player.gets_cards(@deck)
#   @game.table_card
#   @game.update_current_player 
#   @game.table_card
#   @game.compare_cards
#   assert_equal(2, @game.player_hits_snap)   
# end
require 'pry-byebug'

class Game

  attr_reader(:players, :deck, :table, :current_player)

  def initialize(players, deck)
    @players = players
    @deck = deck
    @table = []
    @current_player = players[0]
    @winner = nil
  end

  def number_of_players()
    return @players.count
  end

  def table_card
    return @table << @current_player.presents_card
  end

  def update_current_player()
    @current_player = @players.rotate![0]
  end

  def top_card
    return table_card[-1]
  end

  def latest_card
    return @current_player.presents_card
  end

  def compare_cards
    # binding.pry
    return top_card== latest_card.to_a

  end

end
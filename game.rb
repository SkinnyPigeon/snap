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

end
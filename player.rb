# require_relative 'snap_cards'
require("pry-byebug")

class Player

  attr_reader(:name, :player_deck)

  def initialize(name)
    @name = name
    @player_deck = []
  end

  def gets_cards(deck)
    @player_deck << deck.deal(1) if !deck.nil?
  end

end
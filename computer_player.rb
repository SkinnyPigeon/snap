class ComputerPlayer

  attr_reader(:name, :computer_deck)

  def initialize(name)
    @name = name
    @computer_deck = []
  end

  def gets_cards(deck)
    @computer_deck << deck.deal(1) if !deck.nil?
  end

  def presents_card(player_deck)
    return @computer_deck.pop
  end

end

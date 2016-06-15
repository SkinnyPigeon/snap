class Card

  attr_reader(:suits, :numbers, :cards)

  def initialize(suits, numbers)
    @suits = suits
    @numbers = numbers
    @cards = {}
  end

  # def make_cards
  #   @cards[suits.zip(numbers)]
  #   return @cards
  # end


  def make_cards
    for suit in @suits
      cards [:suit]
    end
    for number in @numbers
      cards [:suit][:number]
    end
    return cards
  end

end
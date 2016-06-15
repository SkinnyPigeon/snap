class Deck

  attr_reader(:pack)

  def initialize(pack)
    @pack = pack
  end
  
  def shuffle()
    return @pack.shuffle!
  end

  def deal(cards_to_deal)
    return @pack.pop(cards_to_deal)
  end

end
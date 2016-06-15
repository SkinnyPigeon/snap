class Table

  attr_reader(:game_space, :table_gets_card)

  def initialize()
    @game_space = []
  end

  def table_gets_card(player)
    @game_space << player.presents_card(player_deck)
  end

end
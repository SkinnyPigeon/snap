class Game

  attr_reader(:players, :deck, :table, :current_player)

  def initialize(players, deck)
    @players = players
    @deck = deck
    @table = []
    @current_player = players[0]
    @loser = nil
    @key_press = []
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
    return top_card == latest_card
  end

  def player_one_calls_snap
    hits = gets.chomp
    if hits == "s"
      return compare_cards if !hits.nil?
    end
  end

  def player_two_calls_snap
    hits = gets.chomp
    if hits == "l"
      return compare_cards if !hits.nil?
    end
  end

  def player_one_places_card
    hits = gets.chomp
    if hits == "a"
      return @current_player.presents_card if !hits.nil?
    end
  end

  def player_two_places_card
    hits = gets.chomp
    if hits == "k"
      return @current_player.presents_card if !hits.nil?
    end
  end

  def is_won?
    for player in @players
      @loser = player if @player_deck == nil
    end
    binding.pry
    return !@loser.nil?
  end





end

# def right_snap
#   binding.pry
#   return @key_press[-1][0].include?(@key_press[-2][0])
# end

# def button_press
#  @key_press << @table_card
# end


# gap = rand(0...600)
# for i in 0..gap
#   system("stty raw -echo")
#   char = STDIN.read_nonblock(1) rescue nil
#   system("stty -raw echo")
#   if (char)
#     return button_pressed
#     break
#   end
# end
require_relative './player'
require_relative './snap_cards'
require_relative './game'
require_relative './table'

system "clear"
@player1=Player.new("Skinny Pigeon")
@player2=Player.new("Rubot")


puts "Your go #{@player1.name}"
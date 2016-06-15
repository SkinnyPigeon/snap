require'pry-byebug'

@empty = []
@table_card = [12312,31231,4342]


def button_press
 @empty << @table_card
end

gap = rand(0...600)
for i in 0..gap
  system("stty raw -echo")
  char = STDIN.read_nonblock(1) rescue nil
  system("stty -raw echo")
  if (char)
    button_press
    binding.pry
    break
  end
end


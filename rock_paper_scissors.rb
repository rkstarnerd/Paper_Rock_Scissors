#require 'pry'

def play_again(arg)
  if arg.downcase == 'y'
    prompt_player
  elsif arg.downcase == 'n'
    puts "Thanks for playing!"
  end
end

def prompt_player
  puts "Play Paper Rock Scissors!\n Choose one: (P/R/S)"
  player = gets.chomp
  computer = ['P', 'R', 'S'].sample

#binding.pry

  if player.upcase == computer.upcase
    puts "You and computer both picked #{player}.\nIt's a tie."
    puts "Play again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'P') && (computer.upcase == 'R')
    puts "You picked Paper and computer picked Rock.\nPaper Wraps Rock!"
    puts "You won!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'P') && (computer.upcase == 'S')
    puts "You picked Paper and computer picked Scissors.\nScissors cut Paper!"
    puts "Womp! You lost!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'R') && (computer.upcase == 'P')
    puts "You picked Rock and computer picked Paper.\nPaper Wraps Rock!"
    puts "Womp! You lost!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'R') && (computer.upcase == 'S')
    puts "You picked Rock and computer picked Scissors."
    puts "Rock Crushes Scissors!\n You won!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'S') && (computer.upcase == 'P')
    puts "You picked Scissors and computer picked Paper.\nScissors Cut Paper!"
    puts "You won!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'S') && (computer.upcase == 'R')
    puts "You picked Scissors and computer picked Rock.\nRock Crushes Scissors!"
    puts "Womp! You lost!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  end
end

prompt_player

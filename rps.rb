def play_again(arg)
  if arg.downcase == 'y'
    play_rps
  elsif arg.downcase == 'n'
    puts "Thanks for playing!"
  else
    puts "I'll take that as a no.. Thanks for playing!"
  end
end


def play_rps

  puts "Play Rock, Paper, Scissors!\n Choose one: (P/R/S)"

  player = gets.chomp.upcase

    until ['P', 'R', 'S'].include? player
      puts "Please choose one of the following: (P/R/S)"
      player = gets.chomp.upcase
    end

  computer = ['P', 'R', 'S'].sample

  options = { 'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors' }

  puts "You chose #{options[player]} and the computer chose #{options[computer]}."

  if player.upcase == computer.upcase
    puts "You tied!"
    puts "Play again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif ((player.upcase == 'P') && (computer.upcase == 'R'))
    puts "Paper Wraps Rock!"
    puts "You won!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'P') && (computer.upcase == 'S')
    puts "Scissors cut Paper!"
    puts "Womp! You lost!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'R') && (computer.upcase == 'P')
    puts "Paper Wraps Rock!"
    puts "Womp! You lost!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'R') && (computer.upcase == 'S')
    puts "Rock Crushes Scissors!\n You won!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'S') && (computer.upcase == 'P')
    puts "Scissors Cut Paper!"
    puts "You won!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  elsif (player.upcase == 'S') && (computer.upcase == 'R')
    puts "Rock Crushes Scissors!"
    puts "Womp! You lost!\nPlay again? (Y/N)"
    arg = gets.chomp
    play_again(arg)
  end
end

play_rps

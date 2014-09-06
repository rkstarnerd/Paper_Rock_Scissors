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
  options = { 'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors' }

  puts "Play Rock, Paper, Scissors!\n Choose one: (P/R/S)"

  player = gets.chomp.upcase

    until options.has_key? player
      puts "Please choose one of the following: (P/R/S)"
      player = gets.chomp.upcase
    end

  computer = options.keys.sample

  puts "You chose #{options[player]}. The computer chose #{options[computer]}."

  if player.upcase == computer
    puts "You tied!"
  elsif (player.upcase == 'P') && (computer == 'R')
    puts "Paper Wraps Rock!\n You won!"
  elsif (player.upcase == 'P') && (computer == 'S')
    puts "Scissors cut Paper!\n Womp! You lost!"
  elsif (player.upcase == 'R') && (computer == 'P')
    puts "Paper Wraps Rock!\n Womp! You lost!"
  elsif (player.upcase == 'R') && (computer == 'S')
    puts "Rock Crushes Scissors!\n You won!"
  elsif (player.upcase == 'S') && (computer == 'P')
    puts "Scissors Cut Paper!\n You won!"
  elsif (player.upcase == 'S') && (computer == 'R')
    puts "Rock Crushes Scissors!\n Womp! You lost!"
  end

  puts "Play again? (Y/N)"
  arg = gets.chomp
  play_again(arg)
end

play_rps

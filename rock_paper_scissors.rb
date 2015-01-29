def answer_compare(player_choice, computer_choice,
  player_score, computer_score)
  winning_combos = [["r", "s"], ["s", "p"], ["p", "r"]]
  letter_to_shape = {"r" => "rock", "p" => "paper", "s" => "scissors"}

  if winning_combos.include?([player_choice, computer_choice])
    puts "#{letter_to_shape[player_choice]} beats
    #{letter_to_shape[computer_choice]}, player wins the round!"
    player_score += 1
  elsif player_choice == computer_choice
    puts "tie, please try again"
  else
    puts "#{letter_to_shape[computer_choice]} beats
    #{letter_to_shape[player_choice]}, computer wins the round"
    computer_score += 1
  end
end

def winner(player_score, comp_score)
  if player_score > comp_score
    puts "Player Wins!"
  else
    puts "Computer Wins!"
  end
end

def opening_text(player_score, computer_score)
  puts "Player Score: #{player_score}, Computer Score: #{computer_score}"
  print "Choose rock (r), paper (p) or scissors (s):"
end

def choices_text(play_choice, comp_choice)
  letter_to_shape = {"r" => "rock", "p" => "paper", "s" => "scissors"}
  puts "Player Choice: #{letter_to_shape[play_choice]}"
  puts "Computer Choice: #{letter_to_shape[comp_choice]}"
end

def valid_choice?(player_choice)
  player_choice == "r" || player_choice== "p" || player_choice == "s"
end

def game_over?(endscore, player_score, computer_score)
  player_score == endscore || computer_score == endscore
end

# Runs the rps program and sets the final score of the game
def play_game(endscore)
  player_score = 0
  computer_score = 0

  until game_over?(endscore, player_score, computer_score)
    opening_text(player_score, computer_score)
    player_choice = gets.chomp.downcase
    computer_choice = ["r", "p", "s"][rand(3)]

    if valid_choice?(player_choice)
      choices_text(player_choice, computer_choice)
      answer_compare(player_choice, computer_choice,
      player_score, computer_score)
    else
      puts "Invalid entry, try again"
    end
  end
  winner(player_score, computer_score)
end

play_game(2)

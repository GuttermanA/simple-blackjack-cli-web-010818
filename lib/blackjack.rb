

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    # display_card_total(card_total)
    #hit?(card_total)
    card_total
  elsif input == 'h'
    card_total += deal_card
    #card_total = 5
    display_card_total(card_total)
    card_total
  else invalid_command
  end
  #card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter valid command"
  prompt_user

end

def end_loop(card_total)
  until card_total > 21
    card_total = hit?(card_total)
  end
  card_total
end

# card_total = initial_round
# card_total = hit?(card_total)

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #code runner here

  welcome
  final_total = 0
  card_total = initial_round
  # until card_total > 21
  #   card_total += hit?(card_total)
  #   #display_card_total(card_total)
  #   final_total = card_total
  # end
  final_total = end_loop(card_total)
  end_game(final_total)
end

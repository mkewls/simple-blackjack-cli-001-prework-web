def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = Random.new
  deal = card.rand(1..11)
  return deal
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card = deal_card
    total = card + total
    display_card_total(total)
    return total
  elsif user_input == 's'
    return total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
  end
  end_game(total)
end

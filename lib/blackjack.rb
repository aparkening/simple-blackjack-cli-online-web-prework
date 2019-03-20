# Print welcome message to screen
def welcome
  puts "Welcome to the Blackjack Table"
end

# Generate a random card between 1-11
def deal_card
  rand(1..11)
end

# Accept a number argument and output phrase with total
def display_card_total(number)
  puts "Your cards add up to #{number}"
end

# Output instructions for hitting or staying
def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

# Return the value of a `gets.chomp` method
def get_user_input
  return gets.chomp
end

# Prints apology, card total, and thank you message
def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

# Call on #deal_card twice and return the sum via #display_card_total
def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
end

# 
def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    

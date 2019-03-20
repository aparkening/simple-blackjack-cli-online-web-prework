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
  return sum
end

# Take an argument of player's current card total
def hit?(number)
 prompt_user
 player_input = get_user_input
 if player_input == 'h'
   total = deal_card
 end
 elsif player_input != 's'
   invalid_command
 end
 
 
 

  it "returns an integer which is the card total" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(20)).to eq(20)
  end

  it "does not deal another card if user types 's'" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(7)).to eq(7)
  end

  it "deals another card when user types 'h'" do
    expect(self).to receive(:get_user_input).and_return("h")
    expect(self).to receive(:deal_card).and_return(7)
    expect(hit?(7)).to eq(14)
  end
 
 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    

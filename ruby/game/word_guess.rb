# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will
# start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# Method Code
# input: Player 1 User Inputs main word to guess
# steps:
        # Ask Player 1 User for word
        # Store word into a variable
        # Get length of word and store integer into a variable
        # Print out how many letters available
        # Show how many guesses player 2 has
# output: String, integer

# input: Player 2 User Inputs word to guess the main word
# steps:
        # Ask player 2 for word input
        # Store guess word into a variable
# output: String

# input:
# steps:
# output:

class Word_guess_game
  # attr_reader :game_over
  attr_accessor :player1, :player2, :count,:game_over

  def initialize
    # @player1_word = player1
    # @player2_guess = player2
    @game_over = false
    @count = 0
  end
# Checks word if it matches
  def check_word
    if player1 != player2
      puts "That's not the word, try again!"
      @count += 1
      @game_over
    else
      @game_over = true
    end
  end

end

# User Interface

puts "Welcome to Guess That Word!!"
puts "Player 1, input word to guess:"

game = Word_guess_game.new
game.player1 = gets.chomp

# Driver Code

while game.game_over != true
  guesses = game.player1.length - game.count
  if game.game_over != true && guesses != 0
    guesses = game.player1.length - game.count
    puts "Player 2, You have #{guesses}, Guess the word:"
    game.player2 = gets.chomp
    game.check_word
  elsif game.game_over != true && guesses == 0
    puts "You ran out of guesses!! GAME OVER!!"
    game.game_over = true
  else
    puts "You got it correct! Game over!"
  end

end
# p game.game_over
# puts "You got it correct! Game over!"

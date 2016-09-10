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

# input:
# steps:
# output:

# input:
# steps:
# output:

# input:
# steps:
# output:

class Word_guess_game
  attr_reader
  attr_accessor :player1 :player2

  def initialize
    @player1_word = player1
    @length = player1.length
    @player2_guess = player2


  end

  def test
    p @player1
  end

end

# User Interface

puts "Welcome to Guess That Word!!"
puts "Player 1, input word to guess:"

game1 = Word_guess_game.new
game1.player1 = gets.chomp
game1.test


# Driver Code

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
  attr_reader :history
  attr_accessor :player1_word, :player2_guess, :count, :game_over, :dashes

  def initialize(player1_word)
    @player1_word = player1_word
    @player2_guess = player2_guess
    @game_over = false
    @complete = false
    @count = 0
    @history = []
    @dashes = []

  end

  def check_word
    if @player1_word != @player2_guess
      system "clear"
      puts "That's not the word!"

    	p1_index = dashes
    	p1_split = @player1_word.split('')
    	p2_split = @player2_guess.split('')

    	p2_split.each do |letter| # Compares all letters
    	  if p1_split.include?(letter)
    	  	match_letter = letter
    	  	match_index = p1_split.index(letter)
    	  	p1_index[match_index] = letter
    	  end
      end

    	dashes = p1_index.join('') # Prints out what letter they got right
      p "Hint: " + dashes

      @game_over
    else
      @game_over = true
    end
  end

  def hint_count(guess)
    if @history.include?(guess) # Checks if word has been used already
      puts "You have already tried #{guess}!"
    else
      @count += 1
      @history << guess
    end
  end
end

# User Interface
system "clear"

puts "Welcome to Guess That Word!!"
puts "Player 1, input word to guess:"
player1_word = gets.chomp.downcase

# Driver Code

game = Word_guess_game.new(player1_word)
system "clear"
game.dashes = ("-" * game.player1_word.length).split('')

while game.game_over != true
  guesses = game.player1_word.length - game.count

  if game.game_over != true && guesses != 0
    guesses = game.player1_word.length - game.count
    puts "Player 2, You have #{guesses}, Guess the word:"
    game.player2_guess = gets.chomp.downcase
    game.check_word
    game.hint_count(game.player2_guess)
  elsif game.game_over != true && guesses == 0
    puts "You ran out of guesses!! GAME OVER!!"
    game.game_over = true
  end

end

if game.game_over == true && guesses != 0
# p game.game_over
 puts "You got it correct! Game over!"
end

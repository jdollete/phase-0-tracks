# Method Code

# Encrypt
# Get user password
# Get word length
# Counter starts at 0, while counter is less than length keep looping indexes
# Will call .next on each character
# Declare a variable for password as an empty string, that adds each letter to the string as we go
# If they index is a space, it just needs to return the space and not .next in order to avoid the ! mark
# Puts the new password
def encryptor(user_pass)
	counter = 0
	output = ""
	while counter < user_pass.length

	  if user_pass[counter] == " "
	  	output += " "
    elsif user_pass[counter] == "z"
      # conditional for "z"
      output += "a"
	  else
	  	output += user_pass[counter].next
	  end

	  counter += 1

	end

	return output
end


# Decrypt
# Get word length
# Counter starts at 0, while counter is less than length keep looping indexes
# Set variable to alphabet with string input a-z
# Go through each character in alphabet string, check the index of current letter against it

def decryptor(user_decpt)
	counter = 0
	output = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while counter < user_decpt.length

		if user_decpt[counter] == " "
			output += " "
		else

			temp = user_decpt[counter]
			# puts alphabet.index(temp)
# Check alphabet index counter
			ind = alphabet.index(temp)
			output += alphabet[ind-1]

		end

		counter += 1
	end
return output

end

# DRIVER CODE

 # encryptor("abc") # should return "bcd"
 # encryptor("zed") # should return "afe"
 # decryptor("bcd") # should return "abc"
 # decryptor("afe") # should return "zed"

 # puts decryptor(encryptor("swordfish"))
 # Nested methods work because they work from the inside out!

 # Release 5: Add an Interface

 # Print a prompt to the screen, ask if agent is encrypting or decrypting
 # Us an if/else statement to determine which method to call
 # Get input from agent

 puts "Agent, are you encrypting or decrypting? [e/d]"
 entry = gets.chomp

 if entry == "e"
   puts "Enter password to encrypt:"
   user_pass = gets.chomp.downcase
   p encryptor(user_pass)
 elsif entry == "d"
   puts "Enter password to decrypt:"
   user_decpt = gets.chomp.downcase
   p decryptor(user_decpt)
 else
   puts "invalid entry you are a bad agent!!!!"
 end

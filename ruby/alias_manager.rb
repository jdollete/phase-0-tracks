# Agent inputs name
# Name is split into two words
# Reverse/join words
# Split each characters to individual array elements
# Iterate through letters to see if vowel, if it is a vowel go to the next vowel
# If it isn't a vowel, just add to the array
# Join array and split into two words, capitalize the first letter of each words
# Combine both array elements into Combine
# Until user inputs 'quit' keep asking for names

puts "Agent, what is your name?"
agent_name = gets.chomp

until agent_name == "quit"

	agent_rev= agent_name.downcase.split(' ').reverse.join(' ').split('')

	agent_alias = []
	vowels = ['a', 'e', 'i', 'o', 'u']
	i = 0

	agent_rev.each do |letter|

	  if letter == 'a'
	  	letter = vowels[vowels.index(letter) + 1]
	    agent_alias.insert(i, letter)

	  elsif letter == 'e'
	  	letter = vowels[vowels.index(letter) + 1]
	    agent_alias.insert(i, letter)

	   elsif letter == 'i'
	  	letter = vowels[vowels.index(letter) + 1]
	    agent_alias.insert(i, letter)

	  elsif letter == 'o'
	  	letter = vowels[vowels.index(letter) + 1]
	    agent_alias.insert(i, letter)

	  elsif letter == 'u'
	  	agent_alias.insert(i, vowels[0])

	  else
		agent_alias.insert(i, letter)

	  end
	  i += 1

	end

	p agent_alias.join('').split(' ').map { |i| i.capitalize}.join(' ')

	puts "Agent, what is your name? (Or enter quit to exit program)"
	agent_name = gets.chomp
end

# Agent inputs name
# Name is split into two words
# Reverse/join words
# Iterate through letters to see if vowel, if it is a vowel go to the next vowel
until agent_name == "quit"
	puts "Agent, what is your name?"
	agent_name = "Allain Dollete"

	agent_rev= agent_name.downcase.split(' ').reverse.join(' ').split('')

	p agent_rev

	agent_alias = []
	vowels = ['a', 'e', 'i', 'o', 'u']
	i = 0

	agent_rev.each do |letter|

	  if letter == 'a' || 'e' || 'i' || 'o' || 'u'
	  	p letter
	  	letter = vowels[vowels.index(letter) + 1]
	    p letter
	    agent_alias.insert(i, letter)


	  elsif letter == 'u'
	  	agent_alias.insert(i, vowels[0])

	  else
		agent_alias.insert(i, letter)

	  end
	  i += 1

	end


	p agent_alias
	p agent_alias.join('').split(' ').map { |i| i.capitalize}.join(' ')
end

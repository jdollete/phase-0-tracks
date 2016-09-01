# Agent inputs name
# Name is split into two words
# Reverse/join words
# Iterate through letters to see if vowel, if it is a vowel go to the next vowel

puts "Agent, what is your name?"
agent_name = "Allain Dollete"

agent_rev= agent_name.downcase.split(' ').reverse.join(' ').split('')

p agent_rev

agent_alias = []
i = 0
agent_rev.each do |letter|
	vowels = ['a', 'e', 'i', 'o', 'u']

  if letter == vowels[i]
  	p letter
    letter = vowels[i + 1]
    p letter
    agent_alias << letter
    i += 1

  #elsif letter == vowels[4]

  else
	agent_alias << letter
  end
end



p agent_alias.join('').split(' ').map { |i| i.capitalize}.join(' ')

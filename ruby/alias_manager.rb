# Agent inputs name
# Name is split into two words
# Reverse/join words
# Iterate through letters to see if vowel, if it is a vowel go to the next vowel

puts "Agent, what is your name?"
agent_name = gets.chomp

agent_rev= agent_name.split(' ').reverse.join(' ')

p agent_rev

agent_rev.map! { |letter|}

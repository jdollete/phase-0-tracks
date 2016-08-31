# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
#swapcase -> new_str
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase

# "zom".<???>
#insert(index, other_str) -> str
# => “zoom”
"zom".insert(1, "o")


# "enhance".<???>
#center(width, padstr='') -> new_str
# => "    enhance    "
"enchance".center(16)

# "Stop! You’re under arrest!".<???>
#upcase -> new_str
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase

# "the usual".<???>
#insert(index, other_str) -> str
#=> "the usual suspects"
"the usual" << " suspects"
"the usual".insert(9, ' suspects')

# " suspects".<???>
#insert(index, other_str) -> str
# => "the usual suspects"
"suspects".insert(0, 'the usual suspects ')

# "The case of the disappearing last letter".<???>
#chop -> new_str
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
#slice(index) -> new_str
#reverse -> new_str
#chop -> new_str
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".slice(1..-1)
"The mystery of the missing first letter".reverse.chop.reverse

# "Elementary,    my   dear        Watson!".<???>
#squeeze([other_str]*) -> new_str
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".squeeze

# "z".<???>
#ord -> integer
# => 122
# (What is the significance of the number 122 in relation to the character z?)
"z".ord

# "How many times does the letter 'a' appear in this string?".<???>
#count([other_str]+) -> fixnum
# => 4
"How many times does the letter 'a' appear in this string?".count('a')

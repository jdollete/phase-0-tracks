# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”
"zom".insert(1, "o")


# "enhance".<???>
# => "    enhance    "
"enchance".center(16)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"
"the usual" << " suspects"
"the usual".insert(9, ' suspects')

# " suspects".<???>
# => "the usual suspects"
"suspects".insert(0, 'the usual suspects ')

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".slice(1..-1)

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".squeeze

# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)
"z".ord

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
"How many times does the letter 'a' appear in this string?".count('a')

# Chicago Salamanders 2016 - Phase 0 - 5.6 Solo challenge
# Benedict Schurwanz

=begin 				# Pseudocode
		What to do:
- get name
- swap first and last name 
	# change string to array of words, reverse it, change it back to a string
- Change all vowels to next vowel ("aeiou") and consonants to next consonant
	# make strings, vowels = "aeiou" and consonants = "bcdfghjklmnpqrstvwxyz", and/or arrays vowels_array and consonants_array
	# if letter is in vowels - use the method that finds if it's a member of that array/string - then get the index of vowels where the letter is, and change the letter in the string to the next letter in the array; if it's in consonants do that with consonants array
	# if it's the last letter - 'z' or 'u' - it needs to wrap around to the first letter
	# if the letter in the original is uppercase, then .upcase the result

Methods to write - one for each small job
# next vowel - takes one character and makes it the next vowel
	- what is the index of where is the character in vowels_array: index_of_character_in_question
	- if character_in_question is 'u'
		- return 'a'
	- if character is not 'u'
		- return the character from vowels array with index_of_character_in_question + 1

# next consonant - takes one character and makes it the next consonant
	- what is the index of where is the character in consonants_array: index_of_character_in_question
	- if character_in_question is 'z'
		- return 'a'
	- if character is not 'z'
		- return the character from consonants array with index_of_character_in_question + 1


Helpful things:
# where in the array is it: array.index(character_in_question)
vowels = "aeiou"
vowels_array = vowels.chars
consonants = "bcdfghjklmnpqrstvwxyz"
consonants_array = consonants.chars

=end





def next_vowel(character)	# assumes character is a vowel
	vowels = "aeiou"
	vowels_array = vowels.chars
	new_character = ""		# where our answer will go
	new_index = nil

	our_index = vowels_array.index(character)
	
	if character != "u"
		new_index = our_index + 1
	elsif character == "u"
		new_index = 0
	end

	new_character = vowels_array[new_index]

	new_character	# returns the new character
end		# tested, working

# same thing but for consonants
def next_consonant(character)	# assumes character is a consonant
	consonants = "bcdfghjklmnpqrstvwxyz"
	consonants_array = consonants.chars
	new_character = ""		# where our answer will go
	new_index = nil

	our_index = consonants_array.index(character)
	
	if character != "z"
		new_index = our_index + 1
	elsif character == "z"
		new_index = 0
	end

	new_character = consonants_array[new_index]

	new_character	# returns the new character
end


puts next_consonant("b")
puts next_consonant("c")
puts next_consonant("d")
puts next_consonant("f")
puts next_consonant("g")
puts next_consonant("h")
puts next_consonant("j")
puts next_consonant("k")
puts next_consonant("l")
puts next_consonant("m")
puts next_consonant("n")
puts next_consonant("p")
puts next_consonant("q")
puts next_consonant("r")
puts next_consonant("s")
puts next_consonant("t")
puts next_consonant("v")
puts next_consonant("w")
puts next_consonant("x")
puts next_consonant("y")
puts next_consonant("z")
















































# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# definte method that takes an integer as a parameter
# change integer to string
# get length of string
# if length is 3 or less, return string
# if length is greater than 3 split string into array by character
# insert comma at index
# turn array back into string


# 2. Initial Solution

def separate_comma(number)
	num = number.to_s
	num_array = num.split("")
		if num.length <= 3
			return num
		else
			if num.length % 3 == 0
				i = num.length-3
				while i > 0
					num_array.insert(i, ",")
					i -= 3
				end
			elsif num.length % 3 == 1
				i = num.length-3
				while i > 0
					num_array.insert(i, ",")
					i -= 3
				end
			elsif num.length % 3 == 2
				i = num.length-3
				while i > 0
					num_array.insert(i, ",")
					i -= 3
				end
			else
				return "You did something wrong!"
			end
			return num_array.join
		end	
end



# 3. Refactored Solution

def separate_comma(number)
	num_array = number.to_s.split("")
	i = num_array.length-3
	while i > 0
		num_array.insert(i, ",")
		i -= 3
	end
	return num_array.join	
end


# 4. Reflection 
# I had the right thought process for this challenge, but I originally thought it would be pretty complicated. I was 
# planning on making if/else sections of code for each modulo result (num % 3 == 0, 1 and 2). As I began writing the
# code, I quickly realized that I could use the same code for each case, and what I was writing was quite repetative.
# I continued to write the code in the way I had originally planned, but it left a lot of room for refactoring. My final
# set of code looks quite a bit cleaner! Refactoring that much feels nice. Kind of makes you go "Oh yeah!" like the
# kool-aid guy.
#
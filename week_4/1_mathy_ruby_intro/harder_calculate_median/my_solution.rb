# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# define median as a method that takes an array as an argument
# sort the array
# check if array length is odd or even
# if array is even, middle number is median
# if array is odd, add middle pair of numbers and divide by 2 to find median


# 2. Initial Solution

def median(array)
	array.sort!
	if array.length % 2 == 1
		return array[(array.length-1)/2]
	else
		med1 = array[array.length/2]
		med2 = array[(array.length/2)-1]
		return (med1+med2)/2.to_f
	end
end


# 3. Refactored Solution

def median(array)
	array.sort!
	x = array.length
	if x % 2 == 1
		return array[(x-1)/2]
	else
		med1 = array[x/2]
		med2 = array[(x/2)-1]
		return (med1+med2)/2.to_f
	end
end

# 4. Reflection 
# See hard_find_mode my_solution.rb for reflection
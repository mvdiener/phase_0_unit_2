# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# define method named mode that takes array as argument
# at array index 0, count number of times that item occurs
# add counter to secondary array


# 2. Initial Solution
 def mode(array)
 	mode_array = []
 	counter = 0
 	while array.length > 0
 		x = array.count(array[0])
 		if x > counter
 			mode_array = [array[0]]
 			counter = x
 			array.delete(array[0])
 		elsif x == counter
 			mode_array.push(array[0])
 			array.delete(array[0])
 		else
 			array.delete(array[0])
 		end
 	end
 	return mode_array
 end



# 3. Refactored Solution

def mode(array)
	mode_array = []
	counter = 0
	while array.length > 0
		i = array[0]
		x = array.count(i)
		if x > counter
			mode_array = [i]
			counter = x
			array.delete(i)
		elsif x == counter
			mode_array.push(i)
			array.delete(i)
		else
			array.delete(i)
		end
	end
	return mode_array
end


# 4. Reflection 
# After just a few weeks, my retention of Ruby was all but 0. Feeling quite frustrated as I started to work this,
# I needed to look the syntax on just about everything I wanted to use. On top of that, I was going about the problem
# from the completely wrong angle, and nothing I was trying was working. I made myself stop and walk around, take a
# breath and revist a few minutes later. I processed my thoughts again and came up with a much better way to do the
# problem. I tend to be extremely hard on myself when I don't understand something, and that only makes things worse.
# I just have to constantly remind myself that I'm still learning, and I need to do so at a pace that's right for me,
# and not anyone else.
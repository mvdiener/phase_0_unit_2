# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# use Array class to define new method
# define a method that takes one or two parameters
# method pads array the specified amount


# 2. Initial Solution

class Array
	def pad(x,y=nil)
		if x <= self.length
			return self
		else
			array_out = self.dup
			while x > array_out.length
				array_out.push(y)
				x-=1
			end
			return array_out
		end
	end
	def pad!(x,y=nil)
		if x <= self.length
			return self
		else
			array_out = self
			while x > array_out.length
				array_out.push(y)
				x-=1
			end
			return array_out
		end
	end
end




# 3. Refactored Solution

class Array
	def pad(x,y=nil)
		if x > self.length
			array_out = self.dup
			while x > self.length
				array_out.push(y)
				x-=1
			end
			return array_out
		end
	end
	def pad!(x,y=nil)
		if x > self.length
			while x > self.length
				self.push(y)
				x-=1
			end
			return self
		end
	end
end



# 4. Reflection 
# So this challenge gave me a hell of a time at first. I probably spent 2-3 hours trying to do research on how to get started.
# I'm comfortable with defining my own methods, but I couldn't figure out for the life of me how to define a method that takes
# parameters AND modifies the part before the period. I didn't even know what to call it! So my search results for "how to define
# a method that has parameters and also changes the thing before the period" was obviously fruitless. I eventually gave in, and 
# briefly looked at some code from someone else who had solved the problem. Not the whole thing, just the first line, so I knew
# where to go. The first line I looked at said "class Array". That's when I discovered defining methods within classes. And also
# how existing ruby classes are all open, meaning I could add my own new method to the Array class, which is exactly what I needed
# to do. But I didn't even know that was a thing! I'm not sure how I should've known this, or perhaps I entirely missed the chapter
# on classes, but prior to this challenge I didn't know that adding your own methods to existing classes was a thing. It's sort of
# like always turning right in your car, never knowing that you could turn left, until finally one day someone told you that turning
# left was a thing, and you could do it whenever you wanted. Well, I guess this all means I'm an ambiturner now.
#
# As for refactoring, I know there should be a way to get rid of all my while loops, but I don't really know what that is or how to
# implement it. I guess better refactoring will come with my knowledge of the language? Currently, I feel like most of the code I
# write is pretty simplistic and brute-force-ish. It's not very "slick" so to speak. How can I get better at this? Does anyone even
# read these? Why are cookies so delicious?
#
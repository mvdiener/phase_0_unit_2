# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:

# create a new class
# define a method which takes an array as a parameter
# return an error if parameter is not an array
# return an error if parameter is an empty array
# define a method which displays the number of sides
# define a method which randomly rolls the die


# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	unless @labels.is_a? Array
  		raise ArgumentError.new("Please enter an array")
  	end
  	unless @lables != []
		raise ArgumentError.new("Please enter an array with something ACTUALLY in it") unless @labels != []
	end
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("Please enter an array") unless @labels.is_a? Array
	raise ArgumentError.new("Please enter an array with something ACTUALLY in it") unless @labels != []
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

#check if die with a non array returns error
Die.new(4) rescue $!.message == "Please enter an array"

#check if die with an empty array returns error
Die.new([]) rescue $!.message == "Please enter an array with something ACTUALLY in it"

#check if Die.sides properly returns sides
sides = (1..rand(100)).to_a
a = Die.new(sides)
a.sides == sides.length

#check if Die.roll returns all possible random values
sides = (1..rand(10000)).to_a
a = Die.new(sides)
rolls = Array.new(50000) {a.roll}.uniq.sort
sides == rolls


# 5. Reflection 
# Much like the previous die challenge, I struggled a bit with getting the right raise ArgumentError syntax. All of the
# double negatives still make my head hurt, especially the "unless @labels != []" line. After that was all sorted out, it
# was pretty straightforward. The rest of the code was only one line per method. Everything seems to work, but it almost
# looks like there should be more code. Like I'm forgetting something. But I really do think that's it.
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
Die.new([]) rescue $!.message == "Please enter an array with something ACTUALLY in it"




# 5. Reflection 

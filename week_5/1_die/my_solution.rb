# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# Output:
# Steps:

# create a new class
# define a method which takes the desired number of sides as a parameter
# return an error if number of sides is less than 1
# define a method which displays the number of sides
# define a method which randomly rolls the die


# 3. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
  	unless @sides > 0
    	raise ArgumentError.new("On what planet would that die work?")
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
    return (1..@sides).to_a.sample
  end
end



# 4. Refactored Solution

class Die
  def initialize(sides)
  	@sides = sides
  	unless @sides > 0
    	raise ArgumentError.new("On what planet would that die work?")
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
    return rand(@sides)+1
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

#check if die smaller than 1 side properly return error message
Die.new(0) rescue $!.message == "On what planet would that die work?"
Die.new(-1) rescue $!.message == "On what planet would that die work?"

#check if Die.sides properly returns sides
sides = rand(1000)
a = Die.new(sides)
a.sides == sides


#check if Die.roll returns all possible random values
sides = rand(100)
a = Die.new(sides)
possible_values = (1..sides).to_a
rolls = Array.new(50000) {a.roll}.uniq.sort
possible_values == rolls

# 5. Reflection 
# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:

# define a class called GuessingGame
# define an initialize method that takes an integer as an answer
# define a method


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
    raise ArgumentError.new("Please enter an integer") unless @answer.is_a? Integer
  end
  def guess(guess)
  	@guess = guess
  	if guess == @answer
  		return :correct
  	elsif guess > @answer
  		return :high
  	elsif guess < @answer
  		return :low
  	end
  end
  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
end


# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@solved = false
    raise ArgumentError.new("Please enter an integer") unless @answer.is_a? Integer
  end
  def guess(guess)
  	@guess = guess
  	if guess == @answer
  		@solved = true
  		return :correct
  	elsif guess > @answer
  		return :high
  	elsif guess < @answer
  		return :low
  	end
  end
  def solved?
  	return @solved
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

#check if entering a non integer properly throws error
GuessingGame.new("test") rescue $!.message == "Please enter an integer"

#check if guessing too high returns :high
game = GuessingGame.new(50)
game.guess(55) == :high

#check if guessing too low returns :low
game = GuessingGame.new(50)
game.guess(45) == :low

#check if guessing right answer returns :correct
game = GuessingGame.new(50)
game.guess(50) == :correct

#check if .solved? properly returns false
game = GuessingGame.new(50)
game.guess(20)
game.solved? == false

#check if .solved? properly returns true
game = GuessingGame.new(50)
game.guess(50)
game.solved? == true

# 5. Reflection
# This one was pretty straightforward as well, much like the two die challenges. I'm getting better with the ArgumentError
# bit, practice makes better! I couldn't find much to refactor on this one. I wanted to get rid of all of my if else statements
# but since they're all pretty specific, I couldn't find a way around it. My .solved? method is pretty simplistic, nothing fancy
# like in the example. I changed my refactored solution to a better .solved? method, my initial code would only make .solved? 
# equal to true if you did game.solved? right after you made the right guess. My refactored code sets .solved? to true once you
# make the right guess, and stays true for every guess after that.
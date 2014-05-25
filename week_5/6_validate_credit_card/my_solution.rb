# U2.W5: Class Warfare, Validate a Credit Card Number

# I worked on this challenge with: Max+Michele.

# 2. Pseudocode

# Input: Create a class credit_card, initialize method that takes a 16 digit number; 
# Output: Error if number is not 16 digits; T or F based on valid cc number
# Steps: Initialize method; define check_card method; 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


class CreditCard
  def initialize(numbers)
    @numbers = numbers.to_s
    raise ArgumentError.new("Please enter a 16 digit number.") unless @numbers.length == 16
  end
  def check_card
    num_array = @numbers.split("").map(&:to_i)
    evens_array = []
    odds_array = []
    (0..15).step(2) {|x| evens_array << num_array[x]*2}
    (1..15).step(2) {|x| odds_array << num_array[x]}
    evens_array = evens_array.join.split("").map!(&:to_i)
    sum = 0
    (evens_array + odds_array).each {|x| sum += x}
    if sum % 10 == 0
        return true
    else 
        return false
    end
  end    
end


# 4. Refactored Solution

class CreditCard
  def initialize(numbers)
    @numbers = numbers.to_s
    raise ArgumentError.new("Please enter a 16 digit number.") unless @numbers.length == 16
  end
  def check_card
    num_array = @numbers.split("").map(&:to_i)
    evens_array = []
    odds_array = []
    (0..15).step(2) {|x| evens_array << num_array[x]*2}
    (1..15).step(2) {|x| odds_array << num_array[x]}
    evens_array = evens_array.join.split("").map!(&:to_i)
    sum = 0
    (evens_array + odds_array).each {|x| sum += x}
    if sum % 10 == 0
        return true
    else 
        return false
    end
  end    
end



# 1. DRIVER TESTS GO BELOW THIS LINE

CreditCard.new(12345) rescue $!.message == "Please enter a 16 digit number."

card = CreditCard.new(4408041234567893)
card.check_card == true

card = CreditCard.new(4408041234567892)
card.check_card == false


# 5. Reflection 
# This was a tough one! There was a lot of time spent looking stuff up and trying to chain methods together
# in a way we couldn't quite figure out. We refactored as we coded and probably can even refactor more, but
# we didn't have the know-how to get it done. Instead of making our two new arrays evens_array and odds_array,
# we tried and tried to chain together .step for the range and .map to alter the array at the same time. Something
# along these lines:

(0..15).step(2) {|x| num_array[x].map!{|y| y*2}}

# That line of code doesn't work, but I feel that something similar really should work. That would eliminate the need for
# our two extra arrays, and would do the necessary math at the same time. If anyone was able to get something
# like that to work, let me know!! After the amount of time we put into trying to figure that out, I'm super
# curious how close we were, if we were even close at all. All in all, I am pretty happy with the solution we came
# up with. Now I'm off to get everyone's credit card info! Wooooo!
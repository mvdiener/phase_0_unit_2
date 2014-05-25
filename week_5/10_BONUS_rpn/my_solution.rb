# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: define a class that takes a string of numbers and operators separated by spaces
# Output: outputs the correct mathematical opeation for that string of numbers
# Steps: split input into an array
# take operator and previous two indexes (numbers) and perform operation
# move to next operator and take previous number and previous total and perform operation
# get really confused



# 3. Initial Solution

class RPNCalculator
    def evaluate(input)
    	calc_array = input.split(" ")
		while calc_array.length > 1
			calc_array.each_with_index do |x, i|
				unless x.to_i.to_s == x
					calc_array[i] = (calc_array[i-2].to_i.send(x,calc_array[i-1].to_i)).to_s
					calc_array.delete_at(i-2)
					calc_array.delete_at(i-2)
					break
				end
			end
		end
        return calc_array[0].to_i
	end
end

# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

a = RPNCalculator.new

a.evaluate("1 1 +") == 2
a.evaluate("1 -1 +") == 0
a.evaluate("2 2 *") == 4
a.evaluate("1 1 +") == 2
a.evaluate("1 1 +") == 2
a.evaluate("1 1 +") == 2
a.evaluate("1 1 +") == 2




# 5. Reflection 
# Not sure how I would refactor this as of right now. After finishing my solution, I went a looked at what a few other
# people had done. Some used .push and .pop methods, but those methods didn't seem useful to me when I was first
# visualizing the problem. What I've got works, so I'll keep it that way. I couldn't get any of my rspec tests
# to pass, until I foolishly realized I was running them in the wrong directory. Sheesh! They all pass now. I spent most
# of my time in this challenge trying to figure out a way to check if a string was an integer or an operator. Trying
# to convert "-".to_i throws errors, so I needed to come up with a clever way to get around that. I ended up with the
# equality statment in my unless statement, that verifies for true or false on if that index is an integer. It was
# fairly smooth sailing from there. I had a lot of fun with this one, and I'm happy with my result.
#
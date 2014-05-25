# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define a method that takes a boggle board and coordinates as a parameter
# returns the word at those coordinates

# Initial Solution

def get_word (board, *coords)
	coords.map {|x| board[x.first][x.last].join}
end

# Refactored Solution

def get_word (board, *coords)
	coords.map {|x| board[x.first][x.last].join}
end

# DRIVER TESTS GO BELOW THIS LINE

puts get_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) ==  "code"
puts get_word(boggle_board, [0,1], [0,2], [1,2])  == "rad"

# Reflection 
# This one took me a while to get, despite a similar solution written in the instructions. I had to run through
# each step of the code in my head before I really understood what was going on. Trying to view the coordinates on the
# boggle board as your traditional coordinates doesn't work. Rather, the first coordinate corrisponds to the index
# in the array, and the second coordinate corrisponds to the index of the array WITHIN that first array. It's a bit confusing,
# but I'm starting to understand a little better.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a method that takes a board and a row number as parameters
# return all the characters in that row

# Initial Solution

def get_row(board, row_num)
	return board[row_num]
end

# Refactored Solution

def get_row(board, row_num)
	return board[row_num]
end

# DRIVER TESTS GO BELOW THIS LINE


# Reflection 
# This seemed far too easy, but I guess it really doesn't need to be more complicated than that, huh?


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution

def get_col(board, col_num)
	board.map{|x| x[col_num]}.join
end

# Refactored Solution

def get_col(board, col_num)
	board.map{|x| x[col_num]}.join
end

# DRIVER TESTS GO BELOW THIS LINE


# Reflection 
# Slightly more complicated than the get_row method, but still nothing too complex. Still not entirely sure about how the .map
# method works, I need to do some more reading on that.
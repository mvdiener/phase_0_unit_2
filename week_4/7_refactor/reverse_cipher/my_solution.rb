# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a # puts all letters of alphabet into an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # Puts the alphabet array into a hash as keys, and sets the "rotated" alphabet as values.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # these are all the special characters which represent spaces
    
    original_sentence = sentence.downcase # sets a new variable equal to the original message with lowercase letters
    encoded_sentence = [] # creates the encoded message as an empty array
    original_sentence.each_char do |element| # interates through each character of the string, without having to convert the string to an array
      if cipher.include?(element) # check if the cipher hash includes the letter from the original message
        encoded_sentence << cipher[element] # adds that cipher value to the coded message
      elsif element == ' ' # checks if the element in the original sentence is a space
        encoded_sentence << spaces.sample # adds a random symbol from the spaces array
      else 
        encoded_sentence << element # if the character doesn't fit with either previous if statement, add that character to the coded message
      end
     end
    
    return encoded_sentence.join # final output is the coded message
end


# Questions:
# 1. What is the .to_a method doing?
# This takes all of the letters in the alphabet and puts them into an array
# 2. How does the rotate method work? What does it work on?
# This method works on arrays, and rotates the array a specified amount. All items get shifted to a new index, and the items at the
# end of the array get wrapped back around to the front. This is really cool!
# 3. What is `each_char` doing?
# each_char looks at each character in a string. This is a good way to get around converting a string to an array and looking at each index.
# 4. What does `sample` do?
# sample randomly selects a value from an array. This is a good way to get random selections from an array without using the .rand method.
# 5. Are there any other methods you want to understand better?
# Most of the methods used here make sense to me, with the exception of .zip. Looking at examples of .zip make sense, but it's not intuitive
# to me (yet). This will come with practice.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# We actually had a lot of similar ideas in our cipher code. This is obviously quite a lot more refactored than ours, but we were definitely
# on the right track to getting somewhere like this.
# 7. Is this good code? What makes it good? What makes it bad?
# This looks like pretty good code to me. I'm not sure that I know enough Ruby yet to be able to look at something and determine if
# it's good or bad code.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# This code looks way more awesome than what we wrote in the original challenge. Mostly due to the refactoring. A lot
# of the problems with our refactoring was probably due to lack of knowledge of methods. Looking at the methods used 
# in this code, I had a lot of "aha!" moments. There were times when we were trying to alter the cipher array or hashes
# a certain way, and I knew there must've been a way to do it, but we couldn't find the right method. Now that I see those
# methods exist, we definitely could have used them in our original code. I felt that this exercise was actually extremely
# useful, because it provides me with the knowledge of how to make something I've written be better. In the future, I can
# apply the knowledge to make my code even more awesome and succinct.
#
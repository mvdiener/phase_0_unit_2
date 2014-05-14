# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.delete_if{|x| x.to_s.include?(thing_to_delete)}
  return source
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if{|x,y| x.to_s.include?(thing_to_delete)}
  return source
end

# Identify and describe the ruby method you implemented. 
# The method I used for this challenge was .delete_if
# Here is a bit on how this method works:
#
# Arrays:
# array.delete_if{|x| block}
#
# The method takes x and goes through each array index and performs whatever code you put in the block. This is similar to
# the array.each method. For example, if you had an array of numbers, and wanted to remove all numbers in the array that were
# greater than 10, you would write the following.
#
# array.delete_if{|x| x > 10}
#
# In my code above, I passed the block x.to_s.include?(thing_to_delete)
# This goes through each index of the array, converts the value to a string, and checks if that value includes thing_to_delete
# The .include? method will fail if you are searching for a string, and the value is an integer, so you need the .to_s method
# in order to get past any errors.
#
#
# Hashes:
# hash.delete_if{|key,value| block}
#
# Similar to the array method above, this method goes through each key/value pair of the hash, and executes the block. I used
# the same block as in my array method to achieve the same result.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# This challenge was pretty straight forward to me, I did get hung up trying to figure out a way to use the .include? method
# on an array that contained both integers and strings. I started trying to define complex methods that would take integers
# in an array, convert them to strings, and then convert them back to integers when I was done. Silly me! That's a typical move
# I make, taking things that should be pretty simple, and designing complex ways to complete them. I had semi-forgotten about
# how easy it is to chain methods together in ruby, so I was able to get around my problem by simply adding .to_s.include? and
# all of my problems were solved. Woo hoo!
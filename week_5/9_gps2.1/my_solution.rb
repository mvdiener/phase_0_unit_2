# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Avi
# 2) Max

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) # defines method bakery_num, takes two parameters: num_of_people and fav_food
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #my_last is a hash of bakery items as keys, and number of items in stock as values
  pie_qty = 0 #possibly redundant? revist
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false #boolean set to false

  my_list.each_key do |k| #iterate through my_list hash, calling each key
    if k == fav_food # checks if the key is equal to the fav_food called in the method
        has_fave = true 
        fav_food = k #possibly redundant
    end
  end
  
  if has_fave == false
    raise ArgumentError.new("You can't make that food") # if fav_food doesn't exist as a key in the my_list hash, throw this error
  else
    fav_food_qty = my_list.values_at(fav_food)[0] # gives an array with a count of how much of the favorite food we have in stock
    
  if num_of_people % fav_food_qty == 0 # if num_of_people is evenly divisible by fav_food_qty then...
    num_of_food = num_of_people / fav_food_qty # new variable called num_of_food is equal to the num_of_people divided by the fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)." # return statement telling you to make num_of_food of the favorite food
  
  else num_of_people % fav_food_qty != 0 # if num_of_people is NOT evenly divisible by fav_food_qty then...
    while num_of_people > 0 # create while loop, while num_of_people is greater that 0
        if num_of_people / my_list["pie"] > 0 # if the num_of_people divided by the my_list value of pie is greater than 0
            pie_qty = num_of_people / my_list["pie"] # pie_qty now equals the num_of_people divided by the my_list value of pie
            num_of_people = num_of_people % my_list["pie"] # num_of_people now equals remainder of num_of_people % my_list["pie"]
        elsif num_of_people / my_list["cake"] > 0 
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
        else
            cookie_qty = num_of_people
            num_of_people = 0
        end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end


#Refactored code--------------

def bakery_num(num_of_people, fav_food)
  portions = {"pie" => 8, "cake" => 6, "cookie" => 1}
  
  unless portions.include?(fav_food)
    raise ArgumentError.new("You can't make that food")
  else
    amt_need = (num_of_people / portions[fav_food].to_f).ceil
    return "You need to make #{amt_need} #{fav_food}(s)."
  end
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
# p bakery_num(24, "cake") == "You need to make 4 cake(s)."
# p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
# p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
# p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
# p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 7 cake(s)."

#Reflection-------------
# This code was absurdly confusing to start with. After working through each part and commenting a lot of it,
# it was still no less confusing. Things finall became a bit more clear when we learned that the my_list hash 
# is actually describing portion size. Then we were really able to get in and refactor. We were able to get
# our code to look pretty nice, but we were a little unsure of one part. In the original driver code, it outputs
# the number of pies, cakes and cookies you would need to make. It's not clear if this is intentional or not.
# For example, if you have 17 people who want pie, and one pie only serves 8 people, then you would need 2 pies
# and have one person remaining. Does this person then get 1 cookie, as shown in the original driver code? Or
# or does this person require us to make an additional pie, making 3 required pies in total? We assumed that since
# the favorite food of all 17 people was pie, that we would need to only check how many pies we would need to make.
# Without this assumption, our code would've been a bit longer. All in all, I think we did a great job!
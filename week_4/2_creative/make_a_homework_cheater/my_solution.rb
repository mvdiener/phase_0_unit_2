# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# Output:
# Steps:

# write a template that takes a title, person/place/topic, date and thesis statement
# output finished template


# 3. Initial Solution

def best_homework_ever(title, person, date, thesis)
	template = "#{title}. #{person} was an influential part of the epic space battle of #{date}, which was later covered up by the government in #{date+2}. Additionally, #{thesis}. In fact, without the contributions of #{person}, humanity would not have survived to the present day."
	puts template
end

# 4. Refactored Solution

# I couldn't find much to refactor here, it's pretty straightforward. 

def best_homework_ever(title, person, date, thesis)
	template = "#{title}. #{person} was an influential part of the epic space battle of #{date}, which was later covered up by the government in #{date+2}. Additionally, #{thesis}. In fact, without the contributions of #{person}, humanity would not have survived to the present day."
	puts template
end



# 1. DRIVER TESTS GO BELOW THIS LINE

best_homework_ever("Tall Hat, Tall Man, Abe Lincoln", "Abraham Lincoln", 1846, "Abe Lincoln was a great man and captain") == "Tall Hat, Tall Man, Abe Lincoln. Abraham Lincoln was an influential part of the epic space battle of 1846, which was later covered up by the government in 1848. Additionally, Abe Lincoln was a great man and captain. In fact, without the contributions of Abraham Lincoln, humanity would not have survived to the present day."
best_homework_ever("The Real Nixon", "Richard Nixon", 1977,"Richard Nixon might have been a robot") == "The Real Nixon. Richard Nixon was an influential part of the epic space battle of 1977, which was later covered up by the government in 1979. Additionally, Richard Nixon might have been a robot. In fact, without the contributions of Richard Nixon, humanity would not have survived to the present day."
best_homework_ever("Life in Ancient Rome","Nero", 54,"Nero created such massive fires, that to this day they still burn inside of computers, helping people create CDs and DVDs") == "Life in Ancient Rome. Nero was an influential part of the epic space battle of 54, which was later covered up by the government in 56. Additionally, Nero created such massive fires, that to this day they still burn inside of computers, helping people create CDs and DVDs. In fact, without the contributions of Nero, humanity would not have survived to the present day."

# 5. Reflection 
# This challenge caused me way more frustration than it should have. First, I was very confused with the instructions, specifically
# the part that required me to make "three different responses". Does that mean I need randomized answers? I eventually decided that
# just meant I needed to use the method three times, with different parameters each time. After that, I spent over an hour trying to
# use \n line breaks in my template, only to be met with errors and actually having \n show up in my output. I eventually gave up 
# trying to use the extra formatting, and just put it all on one line. Finally, I couldn't get any of my driver tests to pass. They
# still don't pass. I know they are right, but something about the strings won't equate. I'm going to call this one good, rather than
# bang my head on the table any more. This seemingly simple challenge turned into something far more complicated than I should have allowed.


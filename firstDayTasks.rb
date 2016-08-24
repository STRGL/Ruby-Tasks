#Hello World program by Daryll Clarkes

# puts "What is your first name?"
# fname = gets.chomp
# puts "What is your last name?"
# lname = gets.chomp

# puts "Hello " + fname + " " + lname + "!"


# puts "Give me a number between 1 and 4?"
# fnum = gets.to_i
# puts "Give me another number between 5 and 9?"
# snum = gets.to_i

# totalnum = (fnum + snum)



# puts "The sum of these numbers is " + totalnum.to_s

def seconds_in_age (fname, age)
	
	secondsAlive = age * 60 * 60 * 8760

	puts fname + ", you have been alive for " + secondsAlive.to_s + " seconds!"
end

puts "What is your first name?"
	val1 = gets.chomp
	val1.capitalize!
	puts "What is your age?"
	val2 = gets.to_i

seconds_in_age val1, val2


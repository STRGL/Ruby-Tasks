# def compliment (name, month, year_of_birth)
# 	age = 2016 - year_of_birth

# 	if age < 6 || age > 70
# 		puts "Well done on your computer skills " + name
# 	elsif age > 6 && age < 16
# 		puts "Do you have parental consent " + name + "?"
# 	else
# 		puts "Sweet as a nut mate"
# 	end
			
# end

# puts "What is your name?"
# name = gets.chomp
# puts "What is your date of birth?"
# date = date.parse(gets)


# compliment name, month, year

puts "What's your favourite fruit?"

case gets.chomp.downcase

	when "apple"
		puts "It's yummy"
	when "orange"
		puts "Hmm"
	when "strawberry"
		puts "My favourite!"
	else 
		puts "I'm not interested!"
end
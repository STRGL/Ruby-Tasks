def give_me_your_name name
	name.capitalize!
	name.reverse!
	puts name
end

puts "What is your name?"
name = gets.chomp

give_me_your_name name
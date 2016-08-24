require 'pry'

hash = Hash.new

puts "What is your name?"
hash[:name] = gets.chomp.downcase.capitalize!
puts "What is your D.O.B?"
hash[:DOB] = gets.chomp
puts "What is your age?"
hash[:age] = gets.chomp.to_i
puts "What is your height in cm?"
hash[:height] = gets.chomp.to_i

binding.pry

@array = Array.new
def get_more_relatives
	puts "Can you give me another name?"
	answer = gets.chomp.downcase

	if answer == 'yes'
		puts "What is the name of your other relative?"
		@array.push(gets.chomp.capitalize)
		get_more_relatives
	elsif answer == 'no'	
		puts "Thank you!"
	else
		puts "Please answer Yes or No"
		get_more_relatives
	end
		

end
puts "Give me the name of a relative of yours?"
@array.push(gets.chomp.capitalize)

get_more_relatives

hash.each {|key, value| puts "#{key} is #{value}" }
	print "Your relatives are "
@array.each_with_index do |x, index|
	print x
	print ", " if index < array.length - 1
	print "and " if index == array.length - 2
end 

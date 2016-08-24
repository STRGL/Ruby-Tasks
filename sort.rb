require 'pry'

@sort_array = Array.new

def add_items_to_array
	puts "Would you like to add items to an Array?"
	answer = gets.chomp.downcase
	unless answer == "no"
		puts "How many items would you like to add?"
		amount = gets.chomp.to_i
		count = 0
		count = count + amount
		loop do 
			@sort_array.push(rand(0...9))
				count = count - 1
				break if count == 0
		end
		
	end
	puts "Thank you very much!"
end


def print_array(array)
  array.each_with_index do |item, index|
  	print item
  	print (index < array.length - 1) ? ', ' : 'and '
end

add_items_to_array

print_array(@sort_array)

def sort_items_in_array
 	puts "Would you like to sort the items in the Array?"
 	answer = gets.chomp.downcase
 	if answer == "no"
 		puts "Ok we'll stick with this unordered mess I guess..."
 	else
 		@sort_array.each_index do |first|
 			@sort_array.each_index do |second|
 				if @sort_array[first] < @sort_array[second]
 					@sort_array[first], @sort_array[second] = @sort_array[second], @sort_array[first]
 					# puts "[#{@sort_array.join(', ')}]"
 				end
 			end
 		end
 	end
 end

 sort_items_in_array

puts "That's all been sorted for you!"

print_array(@sort_array)


require 'Date'

class Person

	attr_accessor :first_name, :surname, :dob 
	attr_reader :emails, :phone_numbers

	def initialize(first_name, surname, dob = nil)
		@dob = Date.parse(dob).strftime('%d %B %Y')
		@first_name = first_name
		@surname = surname
		@emails = []
		@phone_numbers = []
	end

	# def set_first_name(first_name)
	# 	@first_name = first_name
	# end

	# def set_surname(surname)
	# 	@surname = surname
	# end

	def add_emails(email_address)
		@emails.push(email_address)
	end

	def add_phone_number(phone_number)
		@phone_numbers.push(phone_number)
	end

	def get_first_name 
		@first_name
	end

	def get_surname 
		@surname
	end

	def get_full_name
		"#{@first_name} #{@surname}"
	end

	# def get_emails
	# 	@emails
	# end

	# def get_phone_numbers
	# 	@phone_numbers
	# end

	def remove_email(index)
		@emails.delete_at(index - 1)
	end

	def remove_phone_number(index)
		@phone.delete_at(index - 1)
	end

	def show_message
		puts "My name is #{@get_full_name} and I was born on #{@dob}.\n"\
		"Their email addresses are: #{@emails}.\n"\
		"Their phone numbers are #{@phone_numbers} "
	end

	def print_details
		puts get_full_name
		puts "-" * get_full_name.length
		puts "Date Of Birth: #{@dob}"
		puts "Email Addresses:"
		print_array(@emails)
		puts "Phone Numbers:"
		print_array(@phone_numbers)

	end

	def print_array(array) 
		array.each do |item|
			puts "- #{item}"
		end
	end

	

end






























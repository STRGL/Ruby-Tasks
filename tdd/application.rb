require 'Date'

class Person

	attr_accessor :first_name, :surname, :dob
	attr_reader :fullname, :emails, :phone_numbers
		

	def initialize(name, sname, dob)
		@first_name = name.capitalize
		@surname = sname.capitalize
		@dob = Date.parse(dob)
		@fullname = @first_name + " " + @surname
		@emails, @phone_numbers = [], []
	end

	def add_emails(email)
		@emails.push(email)
	end

	def add_phone_numbers(number)
		@phone_numbers.push(number)
	end

	def remove_last_email
		@emails.pop
	end

	def remove_last_phone_number
		@phone_numbers.pop
	end


end
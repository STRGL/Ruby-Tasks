require './application.rb'

class FamilyMember < Person
	def initialize(first_name, surname, dob, relationship)
		@relationship = relationship
		super(first_name, surname, dob)
	end

	def get_relationship
		@relationship
	end


end
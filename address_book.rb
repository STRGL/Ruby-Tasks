require File.expand_path('../oop.rb', __FILE__)
require File.expand_path('../family_member.rb', __FILE__)

class AddressBook

	def initialize
		@address_book = []
	end

	def add(person)
		person.is_a?(FamilyMember) || person.is_a?(Person) ? @address_book.push(person.get_full_name) : "Please only input a Person or Family Member"
	end

	def list
		puts "Address Book:"
		puts "-" * "Address Book".length
		@address_book.each_with_index do |item, index|
			puts "#{index + 1}. #{item}"
		end
	end
end

def create_joe
	@joe = Person.new("Joe", "Bloggs", "3rd Feb 2001")
	@joe.add_emails("whatever@dontcare.com")
	@joe.add_emails("still@dontcare.com")
	@joe.add_phone_number("02076743567")
	@joe.add_phone_number("07456367272")
	@joe.print_details
end

def create_bob
	@bob = FamilyMember.new("Bob", "Bloggs", "1st Feb 2004", "Brother")
	@bob.add_emails("still@dre.com")
	@bob.add_emails("I@dontcare.com")
	@bob.add_phone_number("02076766567")
	@bob.add_phone_number("07452267272")
	@bob.print_details
end

def import_new_people
	@newpeople = YAML.load_file "newpeople.yml"
end


def put_people_to_person(person)
	@wayne = Person.new(person["name"], person["surname"], person["dob"])
	puts @wayne
	@wayne.add_emails(person["emails"][0])
	@wayne.add_emails(person["emails"][1])
	@wayne.add_phone_number(person["phone_numbers"][0])
	@wayne.add_phone_number(person["phone_numbers"][1])
end

def loop_through
	people = @newpeople["people"]
	people.keys.each_with_index do |item, index|
		# @item[index] = Person.new(item["name"], item["surname"], item["dob"])
		puts item
	# @people.add_emails(item["emails"][0])
	# @person.add_emails(item["emails"][1])
	# @person.add_phone_number(item["phone_numbers"][0])
	# @person.add_phone_number(item["phone_numbers"][1])
	end

end




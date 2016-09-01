require 'spec_helper'

describe "Person class - entry in phonebook" do

  before(:each) do
  	@person = Person.new("joe", "bloggs", "1 Jan 1966")
  end

  it "should store and return personal information" do

    # Expected Outcomes
    # expect(person.dob.to_s).to be "1996-01-01"
    # expect(person.first_name).to be "Joe"
    # expect(person.surname).to be "Bloggs"
    # expect(person.fullname).to be "Joe Bloggs"

    expect(@person.dob.to_s).to eq "1966-01-01"
    expect(@person.first_name).to eq "Joe"
    expect(@person.surname).to eq "Bloggs"
    expect(@person.fullname).to eq "Joe Bloggs"
  end

  it "should store the emails and phone numbers in an array" do
    @person.add_emails("joe@bloggs.com")
   	@person.add_emails("bloggs@joe.com")
   	@person.add_phone_numbers("0712345678")
    @person.add_phone_numbers("0798765432")
	
	# Expected Outcomes

    expect(@person.emails).to eq ["joe@bloggs.com", "bloggs@joe.com"]
    expect(@person.phone_numbers).to eq ["0712345678","0798765432"]
  end

  it "should remove created emails from stored emails" do
    @person.add_emails("joe@bloggs.com")
    @person.add_emails("bloggs@joe.com")
    @person.add_phone_numbers("0712345678")
    @person.add_phone_numbers("0798765432")
    elength = @person.emails.length
    plength = @person.phone_numbers.length
    @person.remove_last_email
    @person.remove_last_phone_number



    #Expected Outcomes
    expect(@person.emails.length).to eq (elength - 1)
    expect(@person.phone_numbers.length).to eq (plength - 1)
  end
end
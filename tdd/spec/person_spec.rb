require 'spec_helper'

describe "Person class - entry in phonebook" do
  it "should store and return personal information" do
    person = Person.new("joe", "bloggs", "1 Jan 1966")

    # Expected Outcomes
    # expect(person.dob.to_s).to be "1996-01-01"
    # expect(person.first_name).to be "Joe"
    # expect(person.surname).to be "Bloggs"
    # expect(person.fullname).to be "Joe Bloggs"

    expect(person.dob.to_s).to eq "1966-01-01"
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"

  end
end
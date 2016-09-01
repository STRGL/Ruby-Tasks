require 'spec_helper'
require './family_member'

describe "Family Member should inherit Person" do 
	# before(:each) do
 #  		@fmember = FamilyMember.new("Fabian", "Delph", "1 Jan 1966", "Dad")
 #  	end
	it "should have the same methods as a person" do 
		@fmember = FamilyMember.new("fabian", "delph", "1 Jan 1966", "Dad")
		expect(@fmember.fullname).to eq "Fabian Delph"
	end

	it "should inherit the Person class" do 
		@fmember = FamilyMember.new("fabian", "delph", "1 Jan 1966", "Dad")
		expect(@fmember.is_a? Person).to eq true
	end

end


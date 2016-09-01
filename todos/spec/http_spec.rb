require 'httparty'
require 'spec_helper.rb'

describe "creating posts" do 
	it "should create a new todo item" do
		r = HTTParty.post('http://lacedeamon.spartaglobal.com/todos',query: {title: "Daryll test 2", due: "2016-11-10"})
		ids = r["id"]

		d = HTTParty.get("http://lacedeamon.spartaglobal.com/todos/#{ids}")

		expect(r["id"]).to eq d["id"]
	end

	it "should fail to create a post" do
		bob500 = "bob" * 500
		r = HTTParty.post('http://lacedeamon.spartaglobal.com/todos',query: {title: "#{bob500}", due: "2016-11-10"})
		expect(r.message).to eq "Internal Server Error"
	end
	it "should fail to create a post without a title" do
		r = HTTParty.post('http://lacedeamon.spartaglobal.com/todos',query: {title: "", due: "2016-11-10"})
		expect(r.message).to eq "Internal Server Error"
	end

	it "should return the right result" do
		r = HTTParty.get("http://lacedeamon.spartaglobal.com/todos/7659")
		expect(r["id"]).to eq 7659
	end

	it "should return the nothing" do
		r = HTTParty.get("http://lacedeamon.spartaglobal.com/todos/9000")
		expect(r.message).to eq "Not Found"
	end

	it "should update a post" do
		r = HTTParty.post('http://lacedeamon.spartaglobal.com/todos',query: {title: "", due: "2016-11-10"})
		id = r["id"]
		q = HTTParty.patch("http://lacedeamon.spartaglobal.com/todos/#{id}",query: {title: "New title"})
		expect(q["title"]).to eq "New title"
	end

	it "should delete the post" do 
		r = HTTParty.post('http://lacedeamon.spartaglobal.com/todos',query: {title: "Bob Sinclair", due: "2016-11-10"})
		id = r["id"]
		q = HTTParty.delete("http://lacedeamon.spartaglobal.com/todos/#{id}")
		r = HTTParty.get("http://lacedeamon.spartaglobal.com/todos/#{id}")
		expect(r.message).to eq "Not Found"
	end


end
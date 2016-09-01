require './spec_helper.rb'
require 'selenium-webdriver'
require 'watir-webdriver'
require 'pry'
require 'Date'

# describe 'authentication' do
# 		pending
# 		it "should open the login page" do
# 			driver = Selenium::WebDriver.for :chrome
# 			driver.get "https://www.tumblr.com/"

# 			element = driver.find_element(:id, "signup_login_button")
# 			element.click

# 			expect(driver.current_url).to eq "https://www.tumblr.com/login"
# 		end	
# 		pending
# 		it "should login" do
# 			driver = Selenium::WebDriver.for :chrome
# 			driver.get "https://www.tumblr.com/"

# 			element = driver.find_element(:id, "signup_login_button")
# 			element.click

# 			email = driver.find_element(:id, "signup_determine_email")
# 			email.send_keys "sharp-edgez360@hotmail.com"
# 			# email.send_keys "\n"
# 			nxt_btn = driver.find_element(:id, "signup_forms_submit")
# 			nxt_btn.click


# 			wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# 			password = driver.find_element(:id, "signup_password")
# 			wait.until {password.displayed? }

			
# 			password.send_keys "rubywork"
# 			password.submit

# 			expect(driver.current_url).to eq "https://www.tumblr.com/dashboard"
# 		end


# end

# describe 'functionality' do
# 	pending
# 	it "should post content" do
# 		driver = Selenium::WebDriver.for :chrome
# 			driver.get "https://www.tumblr.com/"

# 			element = driver.find_element(:id, "signup_login_button")
# 			element.click

# 			email = driver.find_element(:id, "signup_determine_email")
# 			email.send_keys "sharp-edgez360@hotmail.com"
# 			email.send_keys "\n"
# 			nxt_btn = driver.find_element(:id, "signup_forms_submit")
# 			nxt_btn.click


# 			wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# 			password = driver.find_element(:id, "signup_password")
# 			wait.until {password.displayed? }

			
# 			password.send_keys "rubywork"
# 			password.submit

# 			post_btn = driver.find_element(:id, "new_post_label_text")
# 			post_btn.click

# 			post_header = driver.find
# 	end

# describe 'login' do 
# 	it "should login" do
# 		browser = Watir::Browser.new :chrome
# 		browser.goto "tumblr.com"
# 		login = browser.element(:id => "signup_login_button").click

# 		email = browser.text_field(:id => "signup_determine_email").when_present.set "sharp-edgez360@hotmail.com"
# 		nxt_btn = browser.button(:id => "signup_forms_submit").click
# 		password = browser.text_field(:id => "signup_password").when_present.set "rubywork"
# 		login_btn = browser.button(:id => "signup_forms_submit").when_present.click

# 		post_btn = browser.element(:id => "new_post_label_text").click
# 		post_header = browser.div(:class => "editor-plaintext").when_present.send_keys "Test post"
# 		post_body = browser.div(:class => "editor-richtext").when_present.send_keys "Ruby goals!"
# 		create_post_btn = browser.button(:class => "create_post_button").click

# 		browser.div(class: 'post-container').wait_while_present

# 		Watir::Wait.until(10) { browser.div(:class => "post_body").text == "Ruby goals!" }

# 		browser.close		
# 	end

	describe 'Find Train times' do 
	it "search for a journey" do
		browser = Watir::Browser.new :chrome
		browser.goto "nationalrail.co.uk"

		from_field = browser.text_field(id: "txtFrom").when_present.set "Richmond (London)"
		to_field = browser.text_field(id:"txtTo").set "Stratford"
		browser.checkbox(id: "ret-ch").set

		d = Time.now
		time_mins = browser.select_list(id:"sltMins").value
		time_hours = browser.select_list(id:"sltHours").value
		case d.min
			when(0..15)
				time_wanted = d.hour + 2
				browser.select_list(id:"sltHours").select_value time_wanted.to_s
				browser.select_list(id:"sltMins").select_value "15"
			when(16..30)
				time_wanted = d.hour + 2
				browser.select_list(id:"sltHours").select_value time_wanted.to_s
				browser.select_list(id:"sltMins").select_value "30"
			when(31..45)
				time_wanted = d.hour + 2
				browser.select_list(id:"sltHours").select_value time_wanted.to_s
				browser.select_list(id:"sltMins").select_value "45"
			when(46..59)
				if d.hour < 22
					time_wanted = d.hour + 3
					browser.select_list(id:"sltHours").select_value time_wanted.to_s
					browser.select_list(id:"sltMins").select_value "0"
				else
					time_wanted = (d.hour + 3) - 24
					browser.select_list(id:"sltHours").select_value time_wanted.to_s
					browser.select_list(id:"sltMins").select_value "0"
				end

		end
		today = Date.today
		today += 7
		date_rtn = browser.text_field(id: "txtDateRet").set today.strftime('%d/%m/%y')
		browser.button(class: "b-y lrg rgt not-IE6").click

	
		# Watir::Wait.until(10) { browser.div(:class => "post_body").text == "Ruby goals!" }

		# browser.close		
	end
end
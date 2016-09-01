require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get "http://google.com/"

element = driver.find_element :name => "q"
element.send_keys "Cheese!"
element.submit

puts "Page title is #{driver.title}"

wait = Selenium::Webdriver::Wait.new(timeout: 10)
wait.until { driver.title.downcase.start_with? "Cheese" }

puts "Page title is #{driver.title}"
driver.quit
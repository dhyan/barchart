require 'rubygems'
require 'selenium-webdriver'
require 'pg'

class Basic_Login

describe "should login" do
	
	it "should" do
		@Test = Selenium::WebDriver.for :firefox
		@wait = Selenium::WebDriver::Wait.new(:timeout => 30)
		@Test.get "localhost:3000"
		@wait.until{@Test.find_element(:xpath, "//a[@href='/admins/new']")}.click
		# @Wait.until{@Test.find_element(:xpath, "//a[@href='/admins']")}.click
		@wait.until{@Test.find_element(:xpath, "//*[@id='admin_name']")}.send_keys "prabu"
		@wait.until{@Test.find_element(:xpath, "//*[@id='admin_sex']")}.click
		@wait.until{@Test.find_element(:xpath, "//*[@id='admin_address']")}.send_keys "123"
		@wait.until{@Test.find_element(:xpath, "//input[@name='commit']")}.click
		@Test.close
	end

end

end
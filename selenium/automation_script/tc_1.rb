require 'rubygems'
require 'selenium-webdriver'
require 'pg'

class Sites_List

  describe "Validation for advance filter" do

  	it "should add contact" do
  		@Test = Selenium::WebDriver.for :firefox
  		@Wait = Selenium::WebDriver::Wait.new(:timeout => 3)
  		@Test.get "localhost:3000"
  		@Test.find_element(:xpath, "//a[@href='/admins/new']").click
  		@Wait.until{@Test.find_element(:xpath, "//a[@href='/admins']")}.click
  		@Test.close
  	end

  end

end
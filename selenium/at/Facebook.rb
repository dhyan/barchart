# puts "qqq"

require 'rubygems'
# puts "qqq1"
require 'selenium-webdriver'
# puts "qqq2"
require 'yaml'
# puts "qqq3"

class User_Interface
  # puts "qqq8"
	def selenium_browser_setup
    # puts "qq9"
        @Test1 = Selenium::WebDriver.for @browser
    	# puts "qqq10"
      @wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    	@Test1.get @url
  	end
  	def login
  		@wait.until{@Test1.find_element()}.send_keys @email
  		@wait.until{@Test1.find_element()}	
      @Test1.find_element{:xpath, "//*[@class="innerWrap"]/textarea"}	
  	end
  	def commit_button
  		
  	end
    def close_browser
      @wait.until{@Test1}.close
    end
  	def load_yaml
  		@hash = YAML.load_file(File.dirname(__FILE__) + '/../at/UI_Inputs.yml')
  		@browser = @hash["Browser"]
    	@email = @hash["Email"]
    	@pwd = @hash["Password"]
      @url = @hash["URL"]
    
  	end

end
require File.dirname(__FILE__) + "/../at/Facebook.rb"

class Login
# puts "qqq4"
	describe "login steps" do
# puts "qqq5"
		# before (:all) do
      		@object = User_Interface.new
          # puts "qqq6"
      		@object.load_yaml
          # puts "qqq7"
    	# end

    	# before (:each) do
   			it "should" do
          @object.selenium_browser_setup
      	# @object.login
      		# @object.commit_button.click
          @object.close_browser
        end
    	end
	# end
end
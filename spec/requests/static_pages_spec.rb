require "spec_helper"

describe "Static Pages", :type => :feature do
	
	describe "Home Page", :type => :feature do
		it "deveria ter o conteudo Sample App" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
		visit '/static_pages/home' 
		page.should have_content ( "Sample App" )
		end
	 end
    
	describe "Help Page", :type => :feature do
		it "deveria ter o conteúdo Help" do
		visit '/static_pages/help'
		page.should have_content ( "Help" )
		end
	end
		
	describe "About Page", :type => :feature do
		it "deveria ter o conteúdo About Us" do
		visit '/static_pages/about'
		page.should have_content ( "About Us" )
		end
	end
	
end
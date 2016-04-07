require "spec_helper"

describe "Static Pages", :type => :feature do
	describe "Home Page", :type => :feature do
    it "deveria ter o conteudo Sample App" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home' 

	page.should have_content ( "Sample App" )
		end
	  end
  end

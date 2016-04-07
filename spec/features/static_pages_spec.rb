require "spec_helper"

describe "Static Pages", :type => :feature do
	 
	 
	 
	 describe "Home Page" do
	 	before(:each) { visit @root }
		it "deveria ter em h1 Sample App" do
		page.should have_selector("h1",:text=>"Welcome to the Sample App")
#		page.should have_selector("title",:text=> full_title( "" ))
#		page.should_not have_selector("title",:text=>"Ruby")
		end
	end
    
	describe "Help Page", :type => :feature do
		before(:each) { visit(help_path) }
	it "deveria ter em h1 Sample App" do
		page.should have_selector("h1",:text=>"Help")
#		page.should have_selector("title",:text=>full_title( "Help" ) )
		end
	end
		
		
	describe "About Page", :type => :feature do
			it "deveria ter em h1 Sample App" do
			before(:each) { visit @about_path }
			page.should have_selector("h1",:text=>"About" )
#			page.should have_selector("title",:text=>full_title( "About Us") )
		end
	end
	
	describe "Contact Page", :type => :feature do
		it "deveria ter em h1 Sample App" do
		before(:each) { visit @contact_path }
		page.should have_selector("h1",:text=>"Contato" )
#		page.should have_selector("text",:text=>full_title( "Contato") )
		end
	end
end
require "spec_helper"

describe "Static Pages", :type => :feature do

	describe "Home Page", :type => :feature do
		it "deveria ter em h1 Sample App" do
		visit '/static_pages/home'
		page.should have_selector("h1",:text => "Sample App")
		end
		
#		it "deveria ter o conteudo Sample App" do
#		visit '/static_pages/home' 
#		page.should have_selector("title",:text=>"Home")
#		end
	 end
    
	describe "Help Page", :type => :feature do
		it "deveria ter o conteúdo Help" do
		visit '/static_pages/help'
		page.should have_selector("h1",:text=>"Help")
		end
		
#		it "deveria ter o título Help" do
#		visit '/static_pages/help'
#		page.should have_selector("title",:text=>"Help")
#		end
	end
		
	describe "About Page", :type => :feature do
	
		it "deveria ter o conteúdo About Us" do
		visit '/static_pages/about'
		page.should have_selector("h1",:text=>"About Us" )
		end
#		it "deveria ter o título About Us" do
#		visit '/static_pages/about'
#		page.should have_selector("title",:text=>"About")
#		end
		
	end
	
	describe "Contact Page", :type => :feature do
	
		it "deveria ter o conteúdo Contato" do
		visit '/static_pages/contact'
		page.should have_selector("h1",:text=>"Contato" )
		end
#		it "deveria ter o título Contato" do
#		visit '/static_pages/contact'
#		page.should have_selector("title",:text=>"#base_title Contact")
#		end
		
	end
	
end
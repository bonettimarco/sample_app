require "spec_helper"

describe "Static Pages", :type => :feature do
	 
	 subject { page }
	 
	 shared_examples_for all static_pages do
	 	it should have_selector("h1", text: "heading")
		it should have_selector("title", text: full_title(page_title)
	end

	describe "Home Page", :type => :feature do
		before(:each) { visit(toot_path) }
		let(:heading) "Sample App"
		let(:page_title)

		it should_behave_like alll "static_pages"
		it should_not have_selector("title", text: "Home"
		end

end
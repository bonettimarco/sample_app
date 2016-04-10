# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

require 'spec_helper'

describe User do

	before do
		@user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
	end

	subject { @user }
	
  pending "add some examples to (or delete) #{__FILE__}"

	describe "remember token" do
		before { @user.save }
		its(:remember_token){ should_not be_blank } 
	end
  
  end

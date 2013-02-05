require 'spec_helper'

describe UsersHelper do
	describe "gravatar_for" do
		before { @user = User.new(name: "Example User", 
								  email: "User@Example.com",
								  password: "foobar",
								  password_confirmation: "foobar") }
		it "should return a image tag" do
			gravatar_for(@user).should =~ /^<img.*\/>/
		end

		it "should include user's name as alt text" do
			gravatar_for(@user).should =~ /alt="Example User"/
		end

		it "should have the gravatar class" do
			gravatar_for(@user).should =~ /class="gravatar"/
		end

		it "should have gravatar url for source" do
			gravatar_for(@user).should =~ /src="https:\/\/secure.gravatar.com\/avatar\//
		end

		it "should accept a size option and append size to src" do
			gravatar_for(@user, size: 40).should =~ /src=".*?s=40/
		end
	end
end
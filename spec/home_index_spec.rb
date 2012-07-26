require_relative 'spec_helper'
require 'pry'

include Capybara::DSL
#include Devise::TestHelpers
describe "Home index spec" do
  fixtures :users
    
  describe "for all" do
    it "shows the 5 highest ratest Links"
    it "shows the 5 latest Links"
    it "shows the 20 highest valued Links"
  end

  describe "unregistered" do

    it "shows a Links for Login and Register in the sidebar when nobody is logged in"
    it "opens Login and Register in an overlaying Tab?"
  end

  describe "registered" do

    before :each do 
        @user = users(:franz)
        #sign_in @user
        visit '/users/sign_in'
        fill_in 'Email', :with => @user.username
        fill_in 'Password', :with => 'test1234'
        click_on 'Sign in'
    end

    it "shows the Username and an Outlog Link in the sidebar when somebody is logged in" do
      #visit '/home/index'
      assert page.has_content?('Log out')
      assert page.has_content?(@user.username)
    end


    it "shows an add new Story Button which opens a Form"
  end

end
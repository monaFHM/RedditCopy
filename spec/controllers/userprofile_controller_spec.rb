require 'spec_helper'

include Capybara::DSL
include TestHelper
describe UserprofileController do
  fixtures :users

  before :each do
    login
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end

require 'rails_helper'

RSpec.describe DashboardController, :type => :controller do
  FactoryGirl.define do
    factory :user do
      email                 "srikanth@yahoo.com"
      password              "foobar1234"
      password_confirmation "foobar1234"
    end 
  end

  login_user
  
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
    
    it "should have a current_user" do
      # note the fact that I removed the "validate_session" parameter if this was a scaffold-generated controller
      subject.current_user.should_not be_nil
    end

    it "should get index" do
      # Note, rails 3.x scaffolding may add lines like get :index, {}, valid_session
      # the valid_session overrides the devise login. Remove the valid_session from your specs
      get 'index'
      response.should be_success
    end
  end
end


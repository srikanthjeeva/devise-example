require 'rails_helper'

FactoryGirl.define do
  factory :user do
    email                 "srikanth@yahoo.com"
    password              "foobar1234"
    password_confirmation "foobar1234"
  end 
end
  
RSpec.describe DashboardController, :type => :controller do

  login_user
  
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
    
    it "should have a current_user" do
      subject.current_user.should_not be_nil
    end

    it "should get index" do
      get 'index'
      response.should be_success
    end
  end
end


class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    responseStng = RestClient.get 'http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=8&q=http%3A%2F%2Fwww.engadget.com%2Ftopics%2Fpodcasts%2Frss.xml'
    jsonStng = JSON.parse(responseStng)
    @feeds = jsonStng["responseData"]["feed"]["entries"]
  end
end

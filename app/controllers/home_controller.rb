class HomeController < ApplicationController
  def index
    @user = current_user if current_user
    @story = Story.last(3)
  end

end

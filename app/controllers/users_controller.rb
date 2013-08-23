class UsersController < ActionController::Base
  def index
    @user = User.fetch params
  end

  def show
    @user = User.timeline_tweets params
  end
end
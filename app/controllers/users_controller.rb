class UsersController < ActionController::Base
  def index
    @user = User.fetch params
  end
end
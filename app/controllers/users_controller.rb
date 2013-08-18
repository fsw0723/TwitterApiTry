class UsersController < ActionController::Base
  def show
    @user = User.fetch params

  end

  def index

  end
end
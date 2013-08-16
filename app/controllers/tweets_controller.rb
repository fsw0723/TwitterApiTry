require 'twitter'
class TweetsController < ActionController::Base
  def index
    @tweets = Tweet.find_all params

  end
end
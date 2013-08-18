class TweetsController < ActionController::Base
  def show_tweets
    @tweets = Tweet.find_all params

  end
end
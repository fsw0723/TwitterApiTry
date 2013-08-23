class TweetsController < ActionController::Base
  def show
    @tweets = Tweet.find_all params
    respond_to do |format|
      format.html
      format.json
    end
  end
end
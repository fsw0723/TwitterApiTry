
require 'twitter_shuwei'
module Service
  class TweetSearch

    def self.search params

      TwitterShuwei::TwitterClient.new(
           :consumer_key => CONSUMER_KEY,
           :consumer_secret => CONSUMER_SECRET,
           :token => OAUTH_TOKEN,
           :secret => OAUTH_TOKEN_SECRET
       ).search_tweet(:keyword=>params[:keyword], :count => params[:count])
    end
  end
end
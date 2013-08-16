require 'twitter'

module Service
  class TweetSearchResult
    def initialize tweets
      @tweets = tweets
    end

    def to_model
      @tweets.each do |tweet|
        Tweet.new(created_at: tweet.created_at,text:tweet.text, from_user:tweet.from_user)
      end

    end
  end
end

module Service
  class TweetSearchResult
    def initialize tweets
      @tweets = tweets['statuses']
    end

    def to_model
      @tweets.map! do |tweet|
        Tweet.new(created_at: tweet['created_at'],text:tweet['text'], name:tweet['user']['name'])
      end
      return @tweets
    end
  end
end
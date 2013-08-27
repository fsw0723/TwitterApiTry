require 'twitter_shuwei'
module Service
  class UserFetch
    def self.fetch_user params
      TwitterShuwei::TwitterClient.new(
          :consumer_key => CONSUMER_KEY,
          :consumer_secret => CONSUMER_SECRET,
          :token => OAUTH_TOKEN,
          :secret => OAUTH_TOKEN_SECRET
      ).show_user(:name=>params[:name])
    end

    def self.find_timeline user
      tweets = TwitterShuwei::TwitterClient.new(
          :consumer_key => CONSUMER_KEY,
          :consumer_secret => CONSUMER_SECRET,
          :token => OAUTH_TOKEN,
          :secret => OAUTH_TOKEN_SECRET
      ).fetch_timeline(:screen_name=>user.screen_name)
      user.tweets = tweets
      return user
    end
  end
end
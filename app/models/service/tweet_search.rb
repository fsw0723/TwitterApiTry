module Service
  class TweetSearch

    def self.search
      Twitter.configure do |config|
        config.consumer_key = 'kcK4sgEVaOkmpPogw5UwQ'
        config.consumer_secret = 'lGGK1B8ON46V6t8Q27K5Dfkt6Pi5S2rE9kFdFnNofo'
        config.oauth_token = '1672554398-uZt0fWOalAWY7QuRlQou7KuOxk4DlK9T8rVJWbL'
        config.oauth_token_secret = 'rr8e0w6sOXgoJMfLkQYBt0PKLmWYdvqNGLEEYYywohU'
      end
      Service::TweetSearchResult.new(Twitter.search('twitter', {:count => 3, :lang => 'en'}).results).to_model
    end
  end
end
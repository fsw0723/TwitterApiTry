module Service
  class TweetSearch

    def self.search params
      Service::TwitterSession.twitter_config
      Service::TweetSearchResult.new(Twitter.search(params[:keyword], {:count => params[:count], :lang => 'en'}).results).to_model
    end
  end
end
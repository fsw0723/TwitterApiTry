
require 'rest_client'
module Service
  class TweetSearch

    def self.search params
      client = Service::TwitterSession.auth
      Service::TweetSearchResult.new(client.send(:get, "/search/tweets.json?q=#{params[:keyword]}&count=#{params[:count]}&lang=en")).to_model
    end
  end
end
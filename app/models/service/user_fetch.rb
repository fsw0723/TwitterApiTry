require 'twitter_oauth'
module Service
  class UserFetch
    def self.fetch_user params
      client = Service::TwitterSession.auth
      Service::UserFetchResult.new(client.show(params[:name])).to_model
    end
  end
end
require 'twitter'
module Service
  class UserFetch
    def self.fetch_user params
      Service::TwitterSession.twitter_config
      Service::UserFetchResult.new(Twitter.user('anand_agrawal')).to_model
    end
  end
end
  class Tweet
    attr_accessor :created_at, :text, :from_user

    def initialize attributes
      attributes.keys.each {|k| instance_variable_set("@#{k}", attributes[k]) if respond_to?(k) }
    end

    def self.find_all params
      Service::TweetSearch.search
    end
  end

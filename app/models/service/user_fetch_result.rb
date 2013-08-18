require 'twitter'

module Service
  class UserFetchResult
    def initialize hash
      @hash = hash
    end

    def to_model
      puts @hash
      puts @hash.name
          User.new(name: @hash.name, location: @hash.location, description:@hash.description)

    end
  end
end
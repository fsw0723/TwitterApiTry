require 'spec_helper'

describe 'Tweets', :vcr do
  include Rack::Test::Methods
  it "should return tweets" do
    get '/tweets/show_tweets.json', keyword: 'hello', count: 3, lang: 'en'

    json_response = JSON.parse(last_response.body)
    puts json_response
    json_response.count.should == 3
    json_response.first.to_s.should == {}

  end
end
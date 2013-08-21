require 'spec_helper'

describe 'Tweets', :vcr do
  include Rack::Test::Methods
  it "should return tweets" do
    get '/tweets/tweets/show_tweets.json', keyword: 'hello', count: 3, lang: 'en'

    json_response = JSON.parse(last_response.body)
    json_response.count.should == 3
    json_response.first.should == {"tweet"=>{"created_at"=>"Wed Aug 21 06:23:18 +0000 2013", "text"=>"@aiR_La hello wassup", "name"=>"eUgEnE"}}

  end
end
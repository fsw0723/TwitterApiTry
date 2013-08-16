require 'spec_helper'

describe Service::TweetSearchResult do
  it 'should return tweet text' do
    tweets = [Tweet.new(text:'aa',from_user:'bb')]
    result = Service::TweetSearchResult.new(tweets).to_model
    result.first.text.should == 'aa'
    result.first.from_user.should == 'bb'
  end
end
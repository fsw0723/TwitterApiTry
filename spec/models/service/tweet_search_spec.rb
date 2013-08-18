require 'spec_helper'
describe Service::TweetSearch do
  it "should return search result", :vcr do
    response = Service::TweetSearch.search({:keyword=>'happy',:count => 3})
    Service::TweetSearchResult.new(response).to_model.size.should == 3
  end
end
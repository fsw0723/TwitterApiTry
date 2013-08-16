require 'spec_helper'
describe Service::TweetSearch, :vcr do
  it "should return search result" do
    response = Service::TweetSearch.search({:keyword=>'happy',:count => 3})
    Service::TweetSearchResult.new(response).to_model.should be
  end
end
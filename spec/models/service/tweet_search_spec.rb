require 'spec_helper'
describe Service::TweetSearch do
  it "should return 3 search result", :vcr do
    response = Service::TweetSearch.search({:keyword=>'happy',:count => 3})
    response.count.should == 3
  end
end
require 'spec_helper'
describe Service::TweetSearch, :vcr do
  it "should return one hash result" do
    response = Service::TweetSearch.search
    response.should be
  end
end
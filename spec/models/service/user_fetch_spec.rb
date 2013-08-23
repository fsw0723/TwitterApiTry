require 'spec_helper'
describe Service::UserFetch do
  context 'fetch_user' do
    it "should return a user", :vcr do
      Service::UserFetch.fetch_user(name:'gem').should_not be_nil
    end
  end

  context 'fetch_timeline' do
    it "should return a user with timeline" do
      user = User.new(screen_name:'fsw0723')
       Service::UserFetch.find_timeline(user).tweets.should_not be_nil
    end
  end
end
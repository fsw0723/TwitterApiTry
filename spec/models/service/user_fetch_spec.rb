require 'spec_helper'
describe Service::UserFetch do
  it "should return a user", :vcr do
       Service::UserFetch.fetch_user(name:'gem').should_not be_nil
  end
end
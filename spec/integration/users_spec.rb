require 'spec_helper'

describe 'Users', :vcr do
  include Rack::Test::Methods
  it "should return one user" do
    get '/users.json?name=fsw0723', keyword: 'hello', count: 3, lang: 'en'

    json_response = JSON.parse(last_response.body)
    json_response.should == {"user"=>{"name"=>"FANG SHUWEI", "location"=>"", "description"=>""}}

  end
end
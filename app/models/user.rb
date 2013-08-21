class User
  attr_accessor :name, :location, :description

  def initialize attributes
    attributes.keys.each {|k| instance_variable_set("@#{k}", attributes[k]) if respond_to?(k) }
  end

  def self.fetch params
    this_user = Service::UserFetch.fetch_user params
    return this_user
  end
end
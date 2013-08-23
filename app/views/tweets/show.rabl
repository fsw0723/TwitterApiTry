collection @tweets
attributes :created_at, :text

child :user do
    attributes :name
end
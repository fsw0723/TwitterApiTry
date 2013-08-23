object @user
attributes :name, :location, :description

child :status do
attributes :text, :created_at
end
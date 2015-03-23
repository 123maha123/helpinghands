json.array!(@charities) do |charity|
  json.extract! charity, :id, :charityName, :ownerfname, :ownerlname, :address, :city, :landmark, :state, :country, :phoneNo, :description, :user_id
  json.url charity_url(charity, format: :json)
end

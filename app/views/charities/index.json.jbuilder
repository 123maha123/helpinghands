json.array!(@charities) do |charity|
  json.extract! charity, :id, :charityName, :ownerfname, :ownerlname, :username, :email, :address, :city, :landmark, :state, :country, :phoneNo, :description
  json.url charity_url(charity, format: :json)
end

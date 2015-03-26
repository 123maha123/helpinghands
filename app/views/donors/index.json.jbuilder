json.array!(@donors) do |donor|
  json.extract! donor, :id, :fname, :lname, :address, :city, :landmark, :state, :country, :phoneNo, :donortype, :user_id
  json.url donor_url(donor, format: :json)
end

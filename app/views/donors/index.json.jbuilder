json.array!(@donors) do |donor|
  json.extract! donor, :id, :fname, :lname, :username, :email, :address, :city, :landmark, :state, :country, :phoneNo
  json.url donor_url(donor, format: :json)
end

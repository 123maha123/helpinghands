json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :wname, :wtype, :isActive, :wdescription, :wphoto, :charity_id
  json.url wishlist_url(wishlist, format: :json)
end

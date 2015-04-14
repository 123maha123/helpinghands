class Wishlist < ActiveRecord::Base
 belongs_to :charity
 has_attached_file :wphoto, :styles => {:thumb => "170x170>",:small => "150x150>"}
 validates_attachment_file_name :wphoto, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
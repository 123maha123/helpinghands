class Charity < ActiveRecord::Base
  has_secure_password
  validates :charityName,presence: true
  validates :ownerfname, presence: true
  validates :ownerlname, presence: true
  validates :username, presence: true,uniqueness:{message:"already exists"},length:{in:5..15,message:" should be of length 5 to 15"}
  validates :email, email_format: { message: "not a valid email address" },uniqueness:{message:"already registered with this email"}
  validates :password,length:{in:5..10,message:" should be of length 5 to 10"}
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :phoneNo,presence:true,length:{is:10,message:"should be of length 10"},numericality: true
  validates :description,presence:true
end

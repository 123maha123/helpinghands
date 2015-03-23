class User < ActiveRecord::Base
  has_secure_password
  has_one :admins, :dependent => :destroy
  has_one :donors, :dependent => :destroy
  has_one :charities, :dependent => :destroy
  validates :username, presence: true,uniqueness:{message:"already exists"},length:{in:5..15,message:" should be of length 5 to 15"}
  validates :email, email_format: { message: "not a valid email address" },uniqueness:{message:"already registered with this email"},presence: true
  validates :password,length:{in:5..10,message:" should be of length 5 to 10"}
  validates :usertype,presence: true
end
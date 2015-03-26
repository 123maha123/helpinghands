class User < ActiveRecord::Base
    has_secure_password
    has_one :donor, :dependent=>:destroy
    accepts_nested_attributes_for :donor
    has_one :charity, :dependent=>:destroy
    accepts_nested_attributes_for :charity
    validates :username, presence: true,uniqueness:{message:"already exists"},length:{in:5..15,message:" should be of length 5 to 15"}
    validates :email, email_format: { message: "not a valid email address" },uniqueness:{message:"already registered with this email"}
    validates :password,length:{in:5..10,message:" should be of length 5 to 10"}
    validates :usertype,presence: true
end
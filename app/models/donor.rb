class Donor < ActiveRecord::Base
  belongs_to :user
  validates :fname, presence: true
  validates :lname, presence: true
  validates :address, presence: true
  validates :landmark, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :phoneNo,presence:true,length:{is:10,message:"should be of length 10"},numericality: true
end

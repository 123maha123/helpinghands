class Admin < ActiveRecord::Base
  belongs_to :user
  validates :fname, presence: true
  validates :lname, presence: true
  validates :phoneNo,presence:true,length:{is:10,message:"should be of length 10"},numericality: true
end

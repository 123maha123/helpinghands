class Charity < ActiveRecord::Base
  belongs_to :user
  validates :charityName,presence: true
  validates :ownerfname, presence: true
  validates :ownerlname, presence: true
  validates :address, presence: true
  validates :landmark, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :phoneNo,presence:true,length:{is:10,message:"should be of length 10"},numericality: true
  validates :description,presence:true
end

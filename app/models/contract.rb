class Contract < ActiveRecord::Base
  validates :cname, presence: true, length: {minimum: 3, maximum: 50} 
end
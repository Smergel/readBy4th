class Partner < ActiveRecord::Base
  has_many :users
  has_many :posts
  has_many :participants
end

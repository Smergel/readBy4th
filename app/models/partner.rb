class Partner < ActiveRecord::Base
  has_many  :users
  has_many  :posts
  has_many  :participants
  has_one   :family_engagement
  has_many  :attendance_matters
  has_one   :year_round_reader
end

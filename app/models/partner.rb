class Partner < ActiveRecord::Base
  has_many :users
  has_many :posts
  has_many :participants
  has_one :family_engagement
  has_one :evidence_based_reading
  has_one :attendance_matters
  has_one :year_round_reader
end

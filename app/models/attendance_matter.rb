class AttendanceMatter < ActiveRecord::Base
  has_one     :partner
  has_one     :user
  belongs_to  :participant
end

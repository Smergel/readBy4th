class Participant < ActiveRecord::Base
  belongs_to  :partner
  has_one     :attendance_matter
end

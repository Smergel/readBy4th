class Participant < ActiveRecord::Base
  belongs_to  :parent
  has_one 	:reading
  has_one     :attendance_matter
end

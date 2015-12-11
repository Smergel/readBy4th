class Participant < ActiveRecord::Base
  belongs_to  :parent
  has_many 	:reading
  has_one     :attendance_matter
end

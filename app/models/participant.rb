class Participant < ActiveRecord::Base
  belongs_to  :parent
  has_many 	:reading
end

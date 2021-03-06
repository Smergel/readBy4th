class Partner < ActiveRecord::Base
  has_many  :users
  has_many  :posts
  has_many  :participants
  has_many  :events
  has_many  :photos
  has_many :documents

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end

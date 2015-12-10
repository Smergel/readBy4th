class Document < ActiveRecord::Base
  belongs_to  :partner

  has_attached_file :doc
  validates_attachment_content_type :doc, :content_type => ['application/pdf', 'application/x-pdf']
end

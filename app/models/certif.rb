class Certif < ActiveRecord::Base
  belongs_to :user
  has_attached_file :attachment

  # Paperclip Validations
  validates_attachment_content_type :attachment, :content_type => ['application/pdf']
  validates_attachment_size :attachment, :less_than => 1.megabytes

end

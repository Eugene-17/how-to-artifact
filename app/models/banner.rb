class Banner < ApplicationRecord
  has_attached_file :image, :default_url => "/images/artifact_logo.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

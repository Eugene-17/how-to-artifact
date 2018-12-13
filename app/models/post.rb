class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :post_images, dependent: :destroy

  has_attached_file :thumbnail, :default_url => "/images/artifact_logo.png"
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/

end

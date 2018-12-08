class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :post_images, dependent: :destroy
end

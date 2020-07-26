class Author < ApplicationRecord
  mount_uploader :image, AuthorImageUploader
  has_many :works
end

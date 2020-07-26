class Work < ApplicationRecord
  belongs_to :author
  mount_uploader :image, WorkImageUploader
end

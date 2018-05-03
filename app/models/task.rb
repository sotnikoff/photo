class Task < ApplicationRecord
  belongs_to :course

  validates :title, presence: true
  validates :description, presence: true
  validates :body, presence: true

  mount_uploader :image, CoverUploader
end

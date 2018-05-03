class Course < ApplicationRecord
  belongs_to :course_category
  validates :title, presence: true
  validates :description, presence: true

  mount_uploader :image, CoverUploader
end

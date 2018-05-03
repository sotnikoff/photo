class Course < ApplicationRecord
  belongs_to :course_category
  has_many :tasks
  validates :title, presence: true
  validates :description, presence: true

  mount_uploader :image, CoverUploader
end

class Course < ApplicationRecord
  belongs_to :course_category
  has_many :tasks
  validates :title, presence: true
  validates :description, presence: true

  has_one_attached :picture
end

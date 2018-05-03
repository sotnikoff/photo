class CourseCategory < ApplicationRecord
  has_many :courses
  validates :title, presence: true
  validates :description, presence: true
end

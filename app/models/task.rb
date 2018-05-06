class Task < ApplicationRecord
  belongs_to :course
  has_many :user_tasks

  validates :title, presence: true
  validates :description, presence: true
  validates :body, presence: true

  has_one_attached :picture
  has_many_attached :materials
end

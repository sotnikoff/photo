class Task < ApplicationRecord
  belongs_to :course
  has_many :user_tasks

  validates :title, presence: true
  validates :description, presence: true
  validates :body, presence: true

  mount_uploader :image, CoverUploader
end

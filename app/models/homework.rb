class Homework < ApplicationRecord
  belongs_to :user_task
  has_one_attached :picture
end

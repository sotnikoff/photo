class Homework < ApplicationRecord
  belongs_to :user_task
  has_many_attached :pictures
end

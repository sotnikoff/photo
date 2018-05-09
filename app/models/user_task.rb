class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :mentor
  has_many :homeworks

  scope :my_tasks, lambda { |user|
    where(user_id: user.id).all
  }
end

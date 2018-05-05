class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task
  has_many :homeworks
end

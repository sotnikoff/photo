class AddMentorToUserTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_tasks, :mentor, foreign_key: true
  end
end

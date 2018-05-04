class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :image
      t.text :user_comment
      t.text :mentor_review
      t.references :user_task, foreign_key: true

      t.timestamps
    end
  end
end

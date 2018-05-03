class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.text :body
      t.string :image
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

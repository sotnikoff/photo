class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :image
      t.references :course_category, foreign_key: true

      t.timestamps
    end
  end
end

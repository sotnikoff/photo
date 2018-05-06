class RemoveImageFromCourseCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :course_categories, :image, :string
  end
end

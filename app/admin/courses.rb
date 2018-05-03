ActiveAdmin.register Course do
  permit_params :title, :description, :image, :course_category_id
end

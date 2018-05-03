ActiveAdmin.register Task do
  permit_params :title, :description, :body, :image, :course_id
end

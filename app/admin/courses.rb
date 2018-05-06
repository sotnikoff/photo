ActiveAdmin.register Course do
  permit_params :title, :description, :picture, :course_category_id

  form do |f|
    f.semantic_errors
    f.inputs
    inputs 'Attachments' do
      input :picture, as: :file
    end
    f.actions
  end
end

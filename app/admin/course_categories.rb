ActiveAdmin.register CourseCategory do
  permit_params :title, :description, :picture

  form do |f|
    f.semantic_errors
    f.inputs
    inputs 'Attachments' do
      input :picture, as: :file
    end
    f.actions
  end
end

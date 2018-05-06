ActiveAdmin.register Task do
  permit_params :title, :description, :body, :picture, :materials, :course_id

  form do |f|
    f.semantic_errors
    f.inputs
    inputs 'Attachments' do
      input :picture, as: :file
      input :materials, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end

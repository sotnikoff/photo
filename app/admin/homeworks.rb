ActiveAdmin.register Homework do
  permit_params :user_comment, :mentor_review, :user_task_id, :picture

  form do |f|
    f.semantic_errors
    f.inputs
    inputs 'Attachments' do
      input :picture, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end

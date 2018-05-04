ActiveAdmin.register Homework do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#
#

  permit_params :user_comment, :mentor_review, :user_task_id, :picture

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    inputs 'Attachments' do
      input :picture, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end

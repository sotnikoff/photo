ActiveAdmin.register UserTask do
  permit_params :user_id, :task_id, :done
end

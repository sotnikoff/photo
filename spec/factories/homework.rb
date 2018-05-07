FactoryBot.define do
  factory :homework do
    user_comment 'User comment'
    mentor_review 'Mentor review'
    status 'new'
    user_task
  end
end

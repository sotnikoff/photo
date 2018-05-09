FactoryBot.define do
  factory :user_task do
    task
    mentor
    user
    done false
  end
end

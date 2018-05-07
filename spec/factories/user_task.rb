FactoryBot.define do
  factory :user_task do
    task
    user
    done false
  end
end

FactoryBot.define do
  factory :team do
    name { "Team_#{rand(999)}"}

    association :user

  end
end

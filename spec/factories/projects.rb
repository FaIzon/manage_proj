require 'factory_bot_rails'

FactoryBot.define do
  factory :project do
    name { "Проект_#{rand(999)}"}

    association :user
    association :team

  end
end

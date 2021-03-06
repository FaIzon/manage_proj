class Project < ApplicationRecord
  validates :name, presence: true
  validates :name, format: { with: /[а-яА-Я]/}

  belongs_to :team
  belongs_to :user

  accepts_nested_attributes_for :team
  include PublicActivity::Model
  tracked owner: -> (controller, model) { controller && controller.current_user }
end


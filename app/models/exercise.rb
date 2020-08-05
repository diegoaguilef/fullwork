class Exercise < ApplicationRecord
  belongs_to :style
  has_many :subscriptions, as: :subscribable
  has_many :groups, through: :subscriptions
  has_many :assignments, as: :assignable
  has_many :activities, through: :assignments
end

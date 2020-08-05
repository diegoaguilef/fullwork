class Group < ApplicationRecord
  has_many :subscriptions
  has_many :exercises, through: :subscriptions, source: :subscribable, source_type: 'Exercise'
  has_many :nutritions, through: :subscriptions, source: :subscribable, source_type: 'Nutrition'
  has_many :healths, through: :subscriptions, source: :subscribable, source_type: 'Health'
end

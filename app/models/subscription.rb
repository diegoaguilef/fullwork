class Subscription < ApplicationRecord
  belongs_to :group
  belongs_to :duration
  belongs_to :subscribable, polymorphic: true

  before_validation :start_subscription, on: :create


  private

  def start_subscription
    self.begin_date = DateTime.now
    self.expiration_date = begin_date + duration.period.month if duration.duration_type.eql? 'monthly'
  end
end

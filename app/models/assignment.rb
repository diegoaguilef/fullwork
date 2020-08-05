class Assignment < ApplicationRecord
  belongs_to :activity
  belongs_to :assignable, polymorphic: true
end

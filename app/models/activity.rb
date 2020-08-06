##
# ==== Attributes
# - title
# - content
# - summary
# - image
# - author
# - tag
# - equipment
# - duration
class Activity < ApplicationRecord
  belongs_to :tag
  belongs_to :equipment
  belongs_to :duration
  has_many :exercises, as: :assignable
end

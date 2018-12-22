class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validates :product, presence: true
  validates_inclusion_of :rating, in: 1..5, allow_blank: true
end

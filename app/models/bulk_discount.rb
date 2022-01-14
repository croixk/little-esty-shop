class BulkDiscount < ApplicationRecord
  belongs_to :merchant
  validates :percent_off, numericality: { less_than_or_equal_to: 100, greater_than: 0,  only_integer: true }

end

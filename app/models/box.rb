class Box < ApplicationRecord
  belongs_to :merchant
  has_one :buy
end

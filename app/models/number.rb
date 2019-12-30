class Number < ApplicationRecord
  validates :code, length: { maximum: 20 } 
end

class Review < ApplicationRecord
  belongs_to :user
  
  validates :comment, presence: true, length: { maximum: 100 }
  
  validates :kind, numericality: { greater_than_or_equal_to: 0}
  validates :kind, numericality: { less_than_or_equal_to: 10}
  validates :cool, numericality: { greater_than_or_equal_to: 0}
  validates :cool, numericality: { less_than_or_equal_to: 10}
  validates :cute, numericality: { greater_than_or_equal_to: 0}
  validates :cute, numericality: { less_than_or_equal_to: 10}
  validates :fashion, numericality: { greater_than_or_equal_to: 0}
  validates :fashion, numericality: { less_than_or_equal_to: 10}
  validates :smart, numericality: { greater_than_or_equal_to: 0}
  validates :smart, numericality: { less_than_or_equal_to: 10}
  validates :fun, numericality: { greater_than_or_equal_to: 0}
  validates :fun, numericality: { less_than_or_equal_to: 10}

end

class Connection < ApplicationRecord
  validates :weight, numericality: { greater_than_or_equal_to: -1, less_than_or_equal_to: 1 }

  belongs_to :left, class_name: 'Node'
  belongs_to :right, class_name: 'Node'
end

class Node < ApplicationRecord
  validates :value, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1, allow_nil: true }

  has_many :right_connections, class_name: 'Connection', foreign_key: 'left_id'
  has_many :left_connections, class_name: 'Connection', foreign_key: 'right_id'

  def layer
    raise(NotImplementedError.new('intended to return the node\'s layer'))
  end
end

class Label < ApplicationRecord
  has_many :addresses
  accepts_nested_attributes_for :addresses

  def from_address
    self.addresses.where(is_to_address: false).first || Address.new(is_to_address: false)
  end

  def to_address
    self.addresses.where(is_to_address: true).first || Address.new(is_to_address: true)
  end
end

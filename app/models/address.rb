class Address < ApplicationRecord
  has_many :to_address_labels, class_name: "Label", foreign_key: "to_address"
  has_many :to_from_labels, class_name: "Label", foreign_key: "from_address"
end

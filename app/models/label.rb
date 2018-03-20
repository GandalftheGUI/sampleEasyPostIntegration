class Label < ApplicationRecord
  has_many :addresses
  accepts_nested_attributes_for :addresses
  after_create :buy_shipping
  after_create :email_user_link

  def from_address
    self.addresses.where(is_to_address: false).first || Address.new(is_to_address: false)
  end

  def to_address
    self.addresses.where(is_to_address: true).first || Address.new(is_to_address: true)
  end

  private

  def buy_shipping
    shipping_info = EasyPostHelper.create_shipment(self)
    self.update_attributes(cost: shipping_info[:rate], label_url: shipping_info[:label_url])
  end

  def email_user_link
    #TODO: Send email to user with link to shipping label
  end
end

require 'easypost'

class EasyPostHelper
  def self.create_shipment(label)
    to_address = proccess_address(label.to_address)
    from_address = proccess_address(label.from_address)

    shipment = EasyPost::Shipment.create(
      :to_address => to_address,
      :from_address => from_address,
      :parcel => parcel,
      :customs_info => customs_info
    )

    shipment.buy(
      :rate => shipment.lowest_rate
    )
  end

  private

  def self.proccess_address(address)
    EasyPost::Address.create(
      :name => address.name,
      :company => address.company,
      :street1 => address.street1,
      :street2 => address.street1,
      :city => address.city,
      :state => address.state,
      :zip => address.zip,
      :country => address.country,
      :phone => address.phone,
  end

  def self.proccess_parcel(label)
    parcel = EasyPost::Parcel.create(
      :width => label.width,
      :length => label.length,
      :height => label.height,
      :weight => label.weight,
    )
  end
end

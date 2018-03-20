class LabelsController < ApplicationController
  def new
    @label = Label.new

  end

  def get_quote
  end

  def create
    @label = Label.new(params[:label].permit(:height, :length, :width, :weight))
    from_address = Address.new(params[:label][:from_address].permit(:name, :company, :street1, :street2, :city, :state, :zip, :phone))
    to_address = Address.new(params[:label][:to_address].permit(:name, :company, :street1, :street2, :city, :state, :zip, :phone))
    from_address.is_to_address = false
    to_address.is_to_address = true
    @label.addresses = [from_address, to_address]
    @label.save!
  end
end

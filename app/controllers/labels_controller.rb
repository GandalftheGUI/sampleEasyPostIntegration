class LabelsController < ApplicationController
  def new
    @label = Label.new
  end

  def show
    @label = Label.find(params[:id])
  end

  def create
    #TODO: Add address validation

    @label = Label.new(params[:label].permit(:height, :length, :width, :weight, :email))
    from_address = Address.new(params[:label][:from_address].permit(:name, :company, :street1, :street2, :city, :state, :zip, :phone))
    to_address = Address.new(params[:label][:to_address].permit(:name, :company, :street1, :street2, :city, :state, :zip, :phone))
    from_address.is_to_address = false
    to_address.is_to_address = true
    @label.addresses = [from_address, to_address]
    
    if @label.save
      redirect_to @label
    else
      #TODO: display errors
    end
  end
end

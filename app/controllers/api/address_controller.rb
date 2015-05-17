class Api::AddressController < ApplicationController
  def create
    address = Address.create(address_params)

    respond_to do |format|
      if address.save
        format.json {render(json: address, status: 201)}
      else
        format.json {render(json: address, status: 400)}
      end
    end
  end

  def index
    respond_to do |format|
      format.json {render(json: Address.all)}
    end
  end

  def show
    respond_to do |format|
      format.json {render(json: Address.find(params[:id]))}
    end
  end

private
  def address_params
    params.require(:address).permit(
      :name, :street, :city, :region, :country, :postal_code
    )
  end
end

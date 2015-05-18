class Api::ShipmentController < ApplicationController
  def create
    shipment = Shipment.create(shipment_params)

    respond_to do |format|
      if shipment.save
        format.json {render(json: shipment, status: 201)}
      else
        format.json {render(json: shipment, status: 400)}
      end
    end
  end

  def index
    respond_to do |format|
      format.json {render(json: Shipment.all)}
    end
  end

  def show
    respond_to do |format|
      format.json {render(json: Shipment.find(params[:id]))}
    end
  end

private
  def shipment_params
    params.require(:shipment).permit(
      :origin_id, :destination_id, :return_address_id
    )
  end
end

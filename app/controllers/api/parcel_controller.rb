class Api::ParcelController < ApplicationController
  def create
    parcel = Parcel.create(parcel_params)

    respond_to do |format|
      if parcel.save
        format.json {render(json: parcel, status: 201)}
      else
        format.json {render(json: parcel, status: 400)}
      end
    end
  end

  def index
  end

  def show
    respond_with(Parcel.find(params[:id]))
  end

private
  def parcel_params
    params.require(:parcel).permit(
      :height, :width, :length
    )
  end
end


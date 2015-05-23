class Api::RateController < ApplicationController
  def show
    respond_to do |format|
      format.json {render(json: Rate.find(params[:id]))}
    end
  end
end


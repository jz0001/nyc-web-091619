class Api::V1::AppearancesController < ApplicationController
  def index
    render json: Appearance.all
  end
end

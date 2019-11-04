class Api::V1::CelebritiesController < ApplicationController
  def index
    celebrities = Celebrity.all 
    render json: celebrities
  end

  def create
  end
  
  def show
  end
  
  def update
    celebrity = Celebrity.find(params[:id])
    celebrity.update(likes: params[:likes])
    render json: celebrity
  end

  def destroy
  end
end

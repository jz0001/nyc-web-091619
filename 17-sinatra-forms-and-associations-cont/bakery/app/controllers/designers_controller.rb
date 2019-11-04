class DesignersController < ApplicationController
  get '/designers/:id' do
    @designer = Designer.find(params[:id])
    @donut_count = @designer.donuts.count
    
    erb :'designers/show'
  end
end
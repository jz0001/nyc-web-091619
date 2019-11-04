class JetsController < ApplicationController

  def new
    @jet = Jet.new
    @jet_companies = JetCompany.all
  end

  def create
    @jet = Jet.create(jet_params)
    @jet_companies = JetCompany.all

    if @jet.save
      redirect_to jet_path(@jet)
    else
      render :new
    end
  end

  def show
    @jet = Jet.find(params[:id])
  end

  private

  def jet_params
    params.require(:jet).permit(:model, :range, :seats, :jet_company_id)
  end
end


  #   <select name="jet[jet_company_id]">
  #   <% @jet_companies.each do |company| %>
  #     <option value="<%= company.id %>">
  #       <%= company.name %>
  #     </option>
  #   <% end %>
  # </select>
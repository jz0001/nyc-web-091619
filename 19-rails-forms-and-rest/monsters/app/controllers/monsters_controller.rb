class MonstersController < ApplicationController
  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)

    if @monster.save
      redirect_to monster_path(@monster)
    else
      redirect_back(fallback_location: new_monster_path)
    end
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def destroy
    monster = Monster.find(params[:id])
    monster.destroy
    redirect_to new_monster_path
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :scariness)
  end
end 
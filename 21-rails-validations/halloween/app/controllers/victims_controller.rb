class VictimsController < ApplicationController
  def show

  end

  def new
    @victim = Victim.new
    @monsters = Monster.all
  end

  def create
    @victim = Victim.new(victim_params)

    if @victim.save
      flash.notice = ["Victim successfully saved"]
      redirect_to victim_path(@victim)
    else
      flash[:errors] =  @victim.errors.full_messages
      redirect_to new_victim_path
    end
  end

  private

  def victim_params
    params.require(:victim).permit(:name, :speed, :living, :monster_id)
  end
  
end

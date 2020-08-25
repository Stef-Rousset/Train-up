class SportsController < ApplicationController

  def create
    @user = current_user
    @sport = Sport.new(params[:sport_params])
    if @sport.save
      redirect_to skill_path(@skill)
    else
      render 'skills/show'
    end
  end

  def destroy
    @user = current_user
    @sport = Sport.find(params[:id])
  end

  private

  def sport_params
    params.require(:sport).permit(:name)
  end
end

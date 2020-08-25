class SportsController < ApplicationController

  def create
    authorize @sport
    @sport = Sport.new(params[:sport_params])
    @sport.user = current_user
    if @sport.save
      redirect_to skill_path(@skill)
    else
      render 'skills/show'
    end
  end

  def destroy
    authorize @sport
    @sport.user = current_user
    @sport = Sport.find(params[:id])
    @sport.destroy
    redirect_to skill_path(@skill)
  end

  private

  def sport_params
    params.require(:sport).permit(:name)
  end
end

class BookingsController < ApplicationController
  def index
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new(booking_params)
    @booking.skill = @skill
    @booking.user = current_user
    @booking.status = "en attente"

    authorize @booking

    if @booking.save
      redirect_to profile_path
    else
      render 'skills/show'
    end
  end

  def destroy
    authorize @booking
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :start_hour, :end_hour, :skill_id, :user_id)
  end
end

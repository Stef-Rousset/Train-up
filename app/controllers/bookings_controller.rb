class BookingsController < ApplicationController

def create
  authorize @booking
  @skill = Skill.find(params[:skill_id])
  @booking = Booking.new(booking_params)
  @booking.skill = @skill
  @booking.user = current_user
  if booking.save
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
  params.require(:booking).permit(:status, :start_date, :end_date, :skill_id, :user_id)
end

end

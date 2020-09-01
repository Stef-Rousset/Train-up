class ReviewsController < ApplicationController
  # def new
  #   @booking = Booking.find(params[:booking_id])
  #   @review = Review.new
  #   authorize @review
  # end

  def show

  end
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to skill_path(@review.booking.skill, anchor: 'comment')
    else
      redirect_to skill_path(@review.booking.skill, anchor: 'comment')
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to booking_path(@review.booking)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end

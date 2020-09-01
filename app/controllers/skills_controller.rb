class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_skill, only: [:show, :edit, :update, :destroy ]

  def index
    @skills = policy_scope(Skill)

    @skills = Skill.global_search(params[:query]) if params[:query].present?
    @skills = @skills.where("name ILIKE ?", "%#{params[:skill_name]}%") if params[:skill_name].present?
    @skills = @skills.joins(:experiences).where(experiences: {sport_id: params[:sport_id]}) if params[:sport_id].present?
    @skills = @skills.joins(:experiences).where(experiences: {specialty: params[:specialty]}) if params[:specialty].present?
    @skills = @skills.joins(:experiences).where("experiences.years >= ?", params[:exp_years]) if params[:exp_years].present?
    @skills = @skills.joins(:experiences).where("experiences.price >= ?", params[:exp_price]) if params[:exp_price].present?
    @skills = @skills.where("location ILIKE ?", "%#{params[:skill_location]}%") if params[:skill_location].present?

    @markers = @skills.geocoded.map do |skill|
      {
        lat: skill.latitude,
        lng: skill.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { skill: skill })
      }
    end
  end

  def show
    @booking = Booking.new
    @review = Review.new
    @chatroom = Chatroom.joins(:participants).where(participants: {user_id: @skill.user, chatroom: current_user.chatrooms}).first 
    @chatroom = Chatroom.new if @chatroom.nil?
  end

  def new
    @user = current_user
    @skill = Skill.new
    @skill.user = current_user
    @experience = @skill.experiences.new
    @sport = @skill.sports.new
    authorize @skill
  end

  def create
    @user = current_user
    @skill = Skill.new(skill_params)
    @skill.user = @user
    authorize @skill

    if @skill.save
      redirect_to skill_experiences_path(@skill)
      # redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @skill.user = current_user
    if @skill.update(skill_params)
    redirect_to skill_path(@skill)
    else
      render :edit
    end
  end

  def destroy
    @skill = @skill.destroy
    redirect_to skills_path(@skill)
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
    authorize @skill
  end

  def skill_params
    params.require(:skill).permit(:name, :location, :description, :video)
  end
end

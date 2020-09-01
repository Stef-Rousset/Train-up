class ExperiencesController < ApplicationController

  def index
    @experiences = policy_scope(Experience).order(created_at: :desc)
    @skill = Skill.find(params[:skill_id])
    @experience = Experience.new
    @experiences = Experience.where(skill_id: @skill.id)
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @experience = Experience.new(experience_params)
    authorize @experience
    @experience.skill = @skill
    if @experience.save!
      redirect_to skill_experiences_path
    else
      render :index
    end
  end

  def edit
    @experience = Experience.find(params[:id])
    authorize @experience
  end

  def update
    @experience = Experience.find(params[:id])
    authorize @experience
    @experience.update(experience_params)
    if @experience.save
      redirect_to profile_path
    else
      render :index
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:years, :specialty, :skill_id, :price, :sport_id)
  end
end

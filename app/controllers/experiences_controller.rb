class ExperiencesController < ApplicationController

  def index
    @experiences = policy_scope(Experience).order(created_at: :desc)
    @experience = Experience.new
    @skill = Skill.find(params[:skill_id])
    @experiences = Experience.where(skill_id: @skill.id)
  end

  def create
    authorize @experience
    @skill = Skill.find(params[:skill_id])
    @experience = Experience.new(experience_params)
    @experience.skill = @skill
    if experience.save
      redirect_to skill_experiences_path
    else
      render :index
    end
  end

  def edit
    @experience = Experience.find(params[:skill_id])
  end

  def update
    authorize @experience
    @experience = Experience.find(params[:skill_id])
    @experience.update(experience_params)
    if @experience.save
      redirect_to skill_experiences_path
    else
      render :index
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:years, :specialty, :skill_id)
  end
end

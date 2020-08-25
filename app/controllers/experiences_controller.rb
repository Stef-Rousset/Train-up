class ExperiencesController < ApplicationController

  def index
    @experience = policy_scope(Experience).order(created_at: :desc)
  end

  def create
    authorize @experience
    @skill = Skill.find(params[:id])
    @experience = Experience.new(experience_params)
    @experience.skill = @skill
    if experience.save
      redirect_to experience_path
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
      redirect_to experience_path
    else
      render :index
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:years, :specialty, :skill_id, :sport_id)
  end
end

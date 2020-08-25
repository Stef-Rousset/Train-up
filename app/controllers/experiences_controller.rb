class ExperiencesController < ApplicationController

  def create
    @skill = Skill.find(params[:id])
    @experience = Experience.new(experience_params)
    @experience.skill = @skill
    if experience.save
      redirect_to skill_path(@skill)
    else
      render 'skill/show'
    end
  end

  def update
    @experience = Experience.find(params[:skill_id])
    @experience.update(experience_params)
    if @experience.save
      redirect_to skill_path(@skill)
    else
      render 'skill/show'
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:years, :specialty, :skill_id, :sport_id)
  end
end

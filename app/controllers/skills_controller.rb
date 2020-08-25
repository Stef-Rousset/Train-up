class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_skill, only: [:show, :edit, :update, :destroy ]

  def index
    @skills = policy_scope(Skill)
  end

  def show
  end

  def new
    @skill = current_user.skills.new
    authorize @skill
  end

  def create
    @skill = current_user.skills.new(skill_params)
    authorize @skill

    if @skill.save
    redirect_to skill_path(@skill)
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
    redirect_to skill_path(@skill)
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
    authorize @skill
  end

  def skill_params
    params.require(:skill).permit(:name, :location, :description, :user_id)
  end
end

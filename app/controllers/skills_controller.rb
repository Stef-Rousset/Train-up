class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_skill, only: [:show, :edit, :update, :destroy ]

  def index

    policy_scope(Skill)
    if params[:query].present?
      @skills = policy_scope(Skill).where("name ILIKE ?", "%#{params[:query]}%")
      @skills = Skill.global_search(params[:query])
    else
      @skills = policy_scope(Skill)
    end
  end

  def show
  end

  def new
    @user = current_user
    @skill = Skill.new
    @skill.user = current_user
    authorize @skill
  end

  def create
    @user = current_user
    @skill = Skill.new(skill_params)
    @skill.user = @user
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
    redirect_to skills_path(@skill)
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
    authorize @skill
  end

  def skill_params
    params.require(:skill).permit(:name, :location, :description)
  end
end

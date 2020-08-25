class SkillsController < ApplicationController
  def index
    @skills=Skill.all
  end

  def show
    @skill=Skill.find(params[:id])
    @sport = Sport.new
    @experience = Experience.new
  end

  def new
    @skill =Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
    redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def edit
    @skill=Skill.find(params[:id])
  end

  def update
    @skill.user = current_user
    if @skill.update(skill_params)
    redirect_to skill_path(@skill)
    else
      render :edit
  end

  def destroy
    @skill=@skill.destroy
    redirect_to skill_path(@skill)
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name, :location, :description, :user_id)
  end
  end






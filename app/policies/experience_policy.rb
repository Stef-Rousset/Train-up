class ExperiencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end
  def edit?
    update?
  end
  def update?
    record.skill.user == user
  end
end

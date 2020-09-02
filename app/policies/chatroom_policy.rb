class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.participants.where(user: user).present?
    # true
  end

  def create?
    true
  end

  # def destroy?
    # true
  # end
end

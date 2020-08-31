class ChatroomPolicy < ApplicationPolicy
  # class Scope < Scope
    # def resolve
      # scope.all
    # end
  # end

  def show?
    # record.participants.include?(user)
    true
  end

  def create?
    true
  end

  # def destroy?
    # true
  # end
end

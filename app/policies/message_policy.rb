class MessagePolicy < ApplicationPolicy
  # class Scope < Scope
    # def resolve
      # scope.all
    # end
  # end

  # def show?
    # record.participants.include?(user)
  # end

  def create?
    record.participants.include?(user)
  end

  # def update?
    # record.user == user
  # end

  # def destroy?
    # record.user == user
  # end
end

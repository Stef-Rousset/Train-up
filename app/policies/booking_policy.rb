class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    def create?
      record.user == user
    end

    def edit?
      record.skill.user == user
    end

    def update?
      record.skill.user == user
    end

    def update_status?
      record.skill.user == user
    end

    def destroy?
      record.user == user
  end
end

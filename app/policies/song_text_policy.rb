class SongTextPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end

    def index?
      true
      # record.user == user || user.admin?
    end
  
    def show?
      true
      # record.user == user || user.admin?
    end
  
    def create?
      true
      # record.user == user || user.admin?
    end
  
    def new?
      create?
    end
  
    def update?
      true
      # record.user == user || user.admin?
    end
  
    def edit?
      update?
    end
  
    def destroy?
      true
      # record.user == user || user.admin?
    end
  end
end

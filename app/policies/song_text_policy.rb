class SongTextPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
  
  def index?
    true
 
  end

  def show?
    true

  end

  def create?
    true

  end

  def new?
    create?
  end

  def update?
    true

  end

  def edit?
    update?
  end

  def destroy?
    true
  end

  def user_song_texts?
    show?
  end

end

class SongTextPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def index?
    scope.all
    #.where(public? == true)
 
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
    @record.where(user_id: @user)
  end

end

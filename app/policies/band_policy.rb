class BandPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope .all
    end
  end

  def show?
    true
  end

  def new?
    return create?
  end

  def create?
    true
  end

  def my_bands?
    true
  end

  def edit?
    return update?
  end

  def update?
    record.user == @user
  end

  def destroy?
    record.user == @user
  end

end

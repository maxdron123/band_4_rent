class BandPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true if @user
  end

  def new?
    return create?
  end

  def create?
    true if @user
  end

  def my_bands?
    true if @user
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

class CheckoutPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    return create?
  end

  def create?
    true if @user
  end

  def destroy?
    true
  end

end

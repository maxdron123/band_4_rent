class PagePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def home?
    true
  end

  def my_checkouts
    true if @user
  end

  def my_notifications
    true if @user
  end
end

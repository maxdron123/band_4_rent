class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]
  def home
    @bands = Band.order(created_at: :desc)
  end

  def my_checkouts
    @user = current_user
    @checkouts = @user.checkouts
  end

  def about
  end
end

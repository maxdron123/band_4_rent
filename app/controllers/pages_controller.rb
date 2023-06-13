class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]
  def home
    @bands = Band.order(created_at: :desc)
  end

  def my_checkouts
    @user = current_user
    @checkouts = @user.checkouts
  end

  def my_notifications
    @user = current_user
    @bands = @user.bands.select { |band| band if band.checkouts.present? }
  end

  def about
  end
end

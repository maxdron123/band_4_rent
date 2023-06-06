class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @bands = Band.order(created_at: :desc)
  end

  def about
  end
end

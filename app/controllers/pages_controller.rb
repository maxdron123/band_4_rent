class PagesController < ApplicationController
  def home
  end

  def about
    @app_name = 'Bands 4 Rent'
    @app_description = 'Welcome to Bands 4 Rent, the platform where venues can connect with bands and book live performances.'
    @app_features = [
      'Browse and search for bands available for live performances.',
      'View detailed profiles and performance samples of bands.',
      'Contact bands directly to inquire about booking and availability.',
      'Manage bookings and schedule performances seamlessly.'
    ]
  end

  def contact
  end
end

module SpinnerHelper
  def checkout_presense
    current_user.bands.each do |band|
      return Checkout.find_by(band_id: band.id)
    end
  end
end

class CheckoutsController < ApplicationController
  def new
    @checkout = Checkout.new
    authorize @checkout
  end

  def create
    @user = current_user
    @checkout = Checkout.new(checkout_params)
    @band = Band.find(params[:band_id])
    @checkout.user = @user
    @checkout.band = @band
    authorize @checkout
    if @checkout.save
      redirect_to root_path, notice: "Congratulations! Renting request sent!"
    else
      render "bands/show", status: :unprocessable_entity
    end
  end

  def destroy
    @checkout = Checkout.find(params[:id])
    authorize @checkout
    @checkout.destroy
    redirect_to my_checkouts_path, status: :see_other
  end

  private

  def checkout_params
    params.require(:checkout).permit(:booking_date)
  end
end

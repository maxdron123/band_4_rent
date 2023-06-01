class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.save
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update(params[:band])
    redirect_to bands_path(@band), notice: 'Band was successfully updated!'
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_path, notice: 'Band was successfully deleted!.'
  end

  private

  def band_params
    params.require(:band).permit(:name, :genre, :members_count, :description, :rate_fee)
  end
end

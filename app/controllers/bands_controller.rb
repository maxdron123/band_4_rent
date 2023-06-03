class BandsController < ApplicationController
  before_action :set_bands, only: %i[show edit update destroy]

  def index
    @bands = Band.all
  end

  def show
  end

  def new
    @band = Band.new
    @user = current_user
  end

  def create
    @user = current_user
    @band = Band.new(band_params)
    @band.user = @user
    if @band.save
      redirect_to band_path(@band)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @band.update(band_params)
      redirect_to band_path(@band), notice: 'Band was successfully updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @band.destroy
    redirect_to bands_path, notice: 'Band was successfully deleted!.'
  end

  private

  def set_bands
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :genre, :members_count, :description, :rate_fee)
  end
end

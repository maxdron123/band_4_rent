class BandsController < ApplicationController
  before_action :set_bands, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
      if params[:query].present?
        @bands = policy_scope(Band).search_by_something(params[:query])
      else
        @bands = policy_scope(Band).all
      end

  end

  def show
    authorize @band
  end

  def my_bands
    @user = current_user
    @bands = @user.bands
    authorize @bands
  end

  def new
    @band = Band.new
    authorize @band
  end

  def create
    @user = current_user
    @band = Band.new(band_params)
    @band.user = @user
    authorize @band
    if @band.save
      redirect_to band_path(@band)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @band
  end

  def update
    authorize @band
    if @band.update(band_params)
      redirect_to band_path(@band), notice: 'Band was successfully updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @band
    @band.destroy
    redirect_to bands_path, status: :see_other, notice: 'Band was successfully deleted!'
  end

  private

  def set_bands
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :genre, :members_count, :description, :rate_fee, photos: [])
  end
end

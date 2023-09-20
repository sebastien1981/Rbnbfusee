class FuseesController < ApplicationController
  #before_action :set_user, only: [:index, :new,:show, :edit, :update, :destroy]

  def index
    @fusees = Fusee.all
  end

  def show
    @fusee = Fusee.find(params[:id])
  end 

  def new
    @fusee = Fusee.new
  end

  def create
    @fusee = Fusee.new(fusee_params)
    @fusee.user = current_user

    if @fusee.save
      redirect_to fusees_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @fusee = Fusee.find(params[:id])
  end

  def update
    @fusee = Fusee.find(params[:id])
    @fusee.update(fusee_params)

    redirect_to fusee_path(@fusee)
  end

  def destroy
    @fusee = Fusee.find(params[:id])
    @fusee.destroy
    redirect_to fusees_path, status: :see_other
  end

  private
  def fusee_params
    params.require(:fusee).permit(:name, :price, :description, photos: [])
  end

end

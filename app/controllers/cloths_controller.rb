class ClothsController < ApplicationController
  def index
    @cloths = Cloth.all
  end

  def show
    @cloth = Cloth.find(params[:id])
  end

  def new
    @cloth = Cloth.new
  end

  def create
    @cloth = Cloth.new(cloth_params)
  end

  def edit
    @cloth = Cloth.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def cloth_params
    params.require(:cloth).permit(:brand, :body, :purchase_date, :price)
  end
end

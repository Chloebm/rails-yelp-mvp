class RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end


  def index
    @restaurants = Restaurant.all
  end


  def new
    @restaurant = Restaurant.new
  end


  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def show
    @restaurant = Restaurant.find(params[:id])
  end


  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(strong_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end


   private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end







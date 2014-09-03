class CarsController < ApplicationController
	
  def index
  	@cars = Car.all
  end

  def show
  	@car = Car.find(params[:id])
  end

  def new
  	@car = Car.new
  end

  def edit
  	@car = Car.find(params[:id])
  end

  def create
  	@car = Car.new(car_params)
  	if @car.save
  		redirect_to cars_path
  	else
  		render :new
  	end
  end

  def update
  	@car = Car.find(params[:id])
  	if @car.update_attributes(car_params)
  		redirect_to cars_path(@car)
  	else
  		render :edit
  	end
  end

  def delete
  	@car = Car.find(params[:id])
  	@car.destroy
  	redirect_to cars_path
  end

  private

  def car_params
  	params.require(:car).permit(:make, :summary, :price_in_dollars)
  end

end

class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def show
  end

  def edit
  end

  def update
    if @route.update(routes_params)
      redirect_to @route
    else
      render :edit
    end
  end

  def create
    @route = Route.new(routes_params)
    if @route.save
      redirect_to @route, notice: 'Route was successfully created.'
    else
      render :new
    end
  end

   def destroy
    @route.destroy
    redirect_to routes_path
  end

  private

  def routes_params
    params.require(:route).permit(:first_station, :last_station)
  end

  def set_route
    @route = Route.find(params[:id])
  end
end

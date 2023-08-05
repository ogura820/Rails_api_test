class MapsController < ApplicationController
  def index
    @maps = Map.all
    render json: @maps
  end

  def show
    map = Map.find(params[:id])
    render json: map
  end

  def create
    Map.create(map_params)
    head :created
    #https://railsguides.jp/layouts_and_rendering.html#head%E3%81%A7%E3%83%98%E3%83%83%E3%83%80%E3%81%AE%E3%81%BF%E3%81%AE%E3%83%AC%E3%82%B9%E3%83%9D%E3%83%B3%E3%82%B9%E3%82%92%E7%94%9F%E6%88%90%E3%81%99%E3%82%8B
  end

  private

  def map_params
    params.require(:map).permit(:name, :latitude, :longitude)
  end
end

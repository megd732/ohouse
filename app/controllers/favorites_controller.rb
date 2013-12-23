def FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(params[:favorite])
    @favorite.save
  end
end
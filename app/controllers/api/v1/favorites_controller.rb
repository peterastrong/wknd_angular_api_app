class Api::V1::FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render "index.json.jbuilder"
  end

  def create
    @favorite = Favorite.new(school_name: params[:school_name])
    @favorite.save
    render "index.json.jbuilder"
  end
end

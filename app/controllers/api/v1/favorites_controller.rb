class Api::V1::FavoritesController < ApplicationController
  def index
    
    render "index.json.jbuilder"
  end
end

class SchoolsController < ApplicationController
  def index
    
    # @schools = Unirest.get("https://data.cityofnewyork.us/resource/4isn-xf7m.json").body
    render "index.html.erb"
  end
end

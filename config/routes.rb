Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "schools#index"

  get "schools", to: "schools#index"

  namespace :api do
    namespace :v1 do
      get "favorites", to: "favorites#index"
    end
  end 
end

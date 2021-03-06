Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ingredients, only: [:index]
      resources :recipes, only: [:index, :show]
      post 'recipes/search'
      post 'ingredients/search'
    end
  end
end

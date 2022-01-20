Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[show update create]
      post '/login', to: 'users#login'
      post '/events/search', to: 'events#search'
      get '/events/search', to: 'events#search'
      post "events/:id/new_images", to: "events#new_images"

      resources :events, only: %i[index create show edit destroy] do
        resources :reservations, only: %i[create show destroy]
      end
      resources :reservations, only: %i[create show destroy]
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

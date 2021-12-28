Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[index create]
      resources :events, only: %i[index create show edit destroy] do
        resources :sign_ups, only: %i[create show destroy]
      end
      resources :sign_ups, only: %i[create show destroy]
    end
    post 'users/wx_login'
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

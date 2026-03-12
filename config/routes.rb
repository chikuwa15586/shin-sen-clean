Rails.application.routes.draw do

  root "static_pages#top"

  devise_for :users

  resource :omikuji, only: [] do
    get :draw
    get :result
    get :history
  end

  resources :omikuji_results, only: [:index]

end
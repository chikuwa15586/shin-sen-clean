Rails.application.routes.draw do

  devise_for :users

  root "static_pages#top"

  get "home", to: "home#index"

  resource :omikuji, only: [] do
    post :draw
    get :result
    get :history
  end

  resources :omikuji_results, only: [:index]
  resources :task_completions, only: [:update]

end
Rails.application.routes.draw do

  devise_for :users, controllers: {
    passwords: 'users/passwords'
  }

  root "static_pages#top"

  get "home", to: "home#index"
  get "users/stats", to: "users#stats"

  resources :omikujis, only: [] do
    collection do
      post :draw
      get :result
      get :history
    end
  end

  resources :omikuji_results, only: [:index]
  resources :task_completions, only: [:update]

end
Rails.application.routes.draw do
  root "home#index"           # トップページ
  get "home/index"            # Home#index
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  # 神籤
  get  'omikuji/draw',    to: 'omikuji#draw',    as: 'draw_omikuji'
  get  'omikuji/result',  to: 'omikuji#result',  as: 'result_omikuji'
end

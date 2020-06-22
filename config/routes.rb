Rails.application.routes.draw do
  devise_for :users

  root to: 'items#index'
  resources :items

  # 以下のルーティングを追加　onlyでshowアクションのみに制限
  resources :users, only: :show
end

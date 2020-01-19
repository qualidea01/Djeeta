Rails.application.routes.draw do
  # ログインセッション(まだ使わない)1
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # 掲示板サイトパス
  root 'boards#index'
  get 'new_create', to: 'boards#new'
  resources :users, only: %i[new create]
  resources :boards
end

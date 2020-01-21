Rails.application.routes.draw do
  # ログインセッション(まだ使わない)
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # 掲示板サイトパス
  root 'boards#index'
  
  resources :users, only: %i[new create]
  resources :boards, only: [:index, :new, :create, :show, :edit, :update]
end

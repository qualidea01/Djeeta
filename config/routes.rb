Rails.application.routes.draw do
  
  get 'users/new'
  get 'users/create'
  get 'users/me'
  get 'home/index'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'home#index'
end

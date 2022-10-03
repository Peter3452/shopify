Rails.application.routes.draw do
  
  get 'welcome', to: 'welcome#index'
  root to: 'welcome#index'

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create' #для создания пользователя

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create' #для входа пользователя
  delete 'logout', to: 'sessions#destroy'
end

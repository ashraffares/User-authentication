Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'main#index'
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  get 'sign_in', to: 'session#new'
  post 'sign_in', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  get 'about-us', to: 'about#index', as: :about
end

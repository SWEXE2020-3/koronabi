Rails.application.routes.draw do
  # get 'evals/new'
  # get 'evals/edit'
  # get 'stores/new'
  # get 'stores/edit'
  # get 'users/new'
  # get 'users/edit'
  # get 'top/index'
  # get 'top/login'
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :evals
  resources :stores
  resources :users
  resources :top
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

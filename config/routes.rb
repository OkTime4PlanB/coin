Rails.application.routes.draw do
  resources :spendings
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
end

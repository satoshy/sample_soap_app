Rails.application.routes.draw do
  get 'welcome/index'

  resources :converters
  
  root 'welcome#index'
end

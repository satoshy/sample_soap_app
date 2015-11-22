Rails.application.routes.draw do
  resources :converters
  
  root 'welcome#index'
end

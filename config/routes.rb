Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'photos#index'
  get '/index', to: 'photos#index'
end

Rails.application.routes.draw do
  resources :articulos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bienvenido#index'
end
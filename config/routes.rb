Rails.application.routes.draw do
  resources :carrierloads
  resources :loads
  resources :carriers
  resources :shippers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

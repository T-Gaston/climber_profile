Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "destinations#index"
  devise_for :users
  resources :destinations

end

Rails.application.routes.draw do
  resources :diseases
  resources :date_of_infections
  resources :animals
  resources :owners
  root "animals#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

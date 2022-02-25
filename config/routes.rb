Rails.application.routes.draw do
  resources :lists, only: %i[index show create new]
  root to: 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

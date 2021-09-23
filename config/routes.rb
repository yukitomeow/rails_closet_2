Rails.application.routes.draw do
  root to: 'item_organizings#index'
  resources :item_organizings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end

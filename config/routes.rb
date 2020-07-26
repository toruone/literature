Rails.application.routes.draw do
  get 'top', to: "home#top" ,as: 'top'
  root to: "home#top"
  # root to: 'works#index'
  resources :works
  resources :authors
end

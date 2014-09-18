Rails.application.routes.draw do
  
  root 'home#map'
  get 'home/map'
  get 'home/list'

  resources :venues
  resources :orgs
  resources :events

end

Rails.application.routes.draw do
<<<<<<< HEAD
  resources :suggestions

  resources :suggests

   resources :venues
=======
  
  resources :suggestions
>>>>>>> upstream/master

  root 'home#map'
  get 'home/map'
  get 'home/list'

  resources :venues
  resources :orgs
  resources :events

end

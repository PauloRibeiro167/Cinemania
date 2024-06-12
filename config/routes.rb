Rails.application.routes.draw do
  root 'home#index'
  get 'movies/index', to: 'movies#index'

  get 'search', to: 'movies#search'
end

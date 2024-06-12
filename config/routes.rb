Rails.application.routes.draw do
  root 'home#index'
  get 'movies/index', to: 'movies#index'
end

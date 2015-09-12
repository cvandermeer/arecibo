Rails.application.routes.draw do
  root 'static_pages#about'
  resources :planets
end

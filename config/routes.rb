Rails.application.routes.draw do
  # get 'static_pages/home'
  # get '/', to: redirect('/articles')

  root "articles#index"

  resources :users
  resources :articles

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete 'logout' => 'sessions#destroy'

  get "up" => "rails/health#show", as: :rails_health_check
end

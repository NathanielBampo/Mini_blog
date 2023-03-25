Rails.application.routes.draw do
  get '/', to: redirect('/articles')
  root "articles#index"

  resources :articles
  
  get "up" => "rails/health#show", as: :rails_health_check
end

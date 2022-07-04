Rails.application.routes.draw do
  resources :group_lists, only: %i[show update destroy create index] do
    resources :lists, only: %i[show update destroy create index] do
      resources :items, only: %i[show update destroy create index]
    end
  end
  
  

  resource :users, only: %i[create show index], path_names: { create: 'signup' }

  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  # Defines the root path route ("/")
  # root "articles#index"
end

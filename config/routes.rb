Rails.application.routes.draw do
  resource :group_list, only: %i[show update destroy create]
  resource :item, only: %i[show update destroy create]
  resource :list, only: %i[show update destroy create]

  resource :users, only: %i[create show index], path_names: { create: 'signup' }

  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  # Defines the root path route ("/")
  # root "articles#index"
end

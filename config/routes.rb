BogApp::Application.routes.draw do

  root to: 'creatures#index'

  resources :creatures

  # get '/creatures', to: 'creatures#index'

  # get '/creatures/new', to: 'creatures#new'

  # get '/creatures/edit', to: 'creatures#edit'

  # get '/creatures/:id', to: 'creatures#show'

  # post '/creatures', to: 'creatures#create'
end

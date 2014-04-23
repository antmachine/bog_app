BogApp::Application.routes.draw do

  root to: 'creatures#index'

  get '/creatures', to: 'creatures#index'

  get '/creatures/new', to: 'creatures#new'

  # get '/creatures/edit', to: 'creatures#edit'

# I originally had the '/creatures/:id' method above the '/creatures/edit'
# one and I was getting errors about creature with id 'edit' couldn't be found.

  get '/creatures/:id', to: 'creatures#show'

  post '/creatures', to: 'creatures#create'
end

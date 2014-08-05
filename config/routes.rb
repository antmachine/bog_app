BogApp::Application.routes.draw do

  root to: 'creatures#index'

  get '/creatures', to: 'creatures#index'

  post '/creatures', to: 'creatures#create'

  get '/edit/:id', to: 'creatures#edit'

  post '/edit/:id', to: 'creatures#update'

  get '/creatures/:id', to: 'creatures#show'

  post '/delete/:id', to: 'creatures#delete'
end

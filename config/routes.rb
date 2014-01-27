RitlyApp::Application.routes.draw do

  root to: 'links#index'

  get '/new', to: 'links#new', as: :new_link

  get '/show/:id', to: 'links#show', as: :link

  get '/go/:code', to: 'links#redirect', as: :redirect

  get '/go/:id/preview', to: 'links#preview', as: :preview

  get '/all', to: 'links#all'

  post '/new', to: 'links#create'

end

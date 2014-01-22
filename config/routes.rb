Review::Application.routes.draw do
  root 'home#index'

  get '/auth/:provider/callback', to: 'user_session#create'
  delete '/logout', to: 'user_session#destroy'
  get '/auth/failure', to: 'home#index'

  resources :profiles do
    resources :organizations
    resources :repositories
  end

  resources :repositories do
    resources :commits
  end

  resources :organizations do
    resources :contributions
    resources :ownerships
  end
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      post '/users', to: 'users#create'
      resources :users do
        resources :puzzles, shallow: true
        resources :scores, shallow: true
      end
    end
  end
end

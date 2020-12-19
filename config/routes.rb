Rails.application.routes.draw do

  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create, :show, :index] do
        resources :moods do
          resources :prompts do
            resources :notes do
            end
          end
        end
      end
    end
  end
end
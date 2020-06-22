Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :moods do
        resources :prompts do
          resources :actions
        end
      end
    end
  end
end
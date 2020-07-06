Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :moods do
        resources :prompts do
        end
      end
    end
  end
end
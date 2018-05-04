Rails.application.routes.draw do
  root 'default#index'

  defaults format: :json do
    namespace :api do
      namespace :v1 do
        resource :potluck
        resources :dish
      end
    end
  end
end

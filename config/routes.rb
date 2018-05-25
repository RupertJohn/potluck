Rails.application.routes.draw do
  root 'default#index'

  scope module: 'api', defaults: { format: 'json' }, constraints: { subdomain: 'api'} do
    namespace :v1 do
      resources :potluck_event, only: [:show, :new, :create, :edit, :update, :destroy]
      resources :dish
    end
  end
end

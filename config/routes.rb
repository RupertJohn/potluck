Rails.application.routes.draw do
  root 'default#index'

  defaults format: :json do
    constraints subdomain: "api" do
      scope module: "api" do
        namespace :v1 do
          resources :potluck_event, only: [:show, :new, :create, :edit, :update, :destroy]
          resources :dish
        end
      end
    end
  end
end

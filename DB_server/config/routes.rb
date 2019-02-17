Rails.application.routes.draw do
  namespace :api, default: {format: :json} do
    resources :data, only: :create
  end
end

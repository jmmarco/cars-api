Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'cars', to: 'cars#index'
      post 'cars', to: 'cars#create'
      get 'cars/:id', to: 'cars#show'
      put 'cars/:id', to: 'cars#update'
      delete 'cars/:id', to: 'cars#destroy'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

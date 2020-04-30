Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'cars/index'
      get 'cars/create'
      get 'cars/show'
      get 'cars/destroy'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

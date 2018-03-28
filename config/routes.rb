Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  jsonapi_resources :sites do
    jsonapi_resources :elements
  end
end

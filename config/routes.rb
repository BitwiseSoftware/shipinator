Rails.application.routes.draw do
  namespace :api do
  get 'shipment/create'
  end

  namespace :api do
  get 'shipment/index'
  end

  namespace :api do
  get 'shipment/show'
  end

  namespace(:api, defaults: {format: "json"},
            constraints: {subdomain: "api"}, path: "/") do
    resources(:parcel)
    resources(:address)
    resources(:shipment)
  end

  root("welcome#index")
end


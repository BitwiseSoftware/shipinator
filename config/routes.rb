Rails.application.routes.draw do
  namespace(:api, defaults: {format: "json"},
            constraints: {subdomain: "api"}, path: "/") do
    resources(:parcel)
    resources(:address)
    resources(:shipment)
  end

  root("welcome#index")
end


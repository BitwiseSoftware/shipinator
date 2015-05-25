Rails.application.routes.draw do
  get("doc/parcel")

  namespace(:api, defaults: {format: "json"},
            constraints: {subdomain: "api"}, path: "/") do
    resources(:parcel)
    resources(:address)
    resources(:shipment)
    resources(:rate)

    get("shipment/:id/rates" => "shipment#rates")
  end

  root("welcome#index")
end

